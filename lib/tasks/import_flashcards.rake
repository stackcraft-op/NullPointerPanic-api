namespace :flashcards do
  desc "Importiert Flashcards aus einer Markdown-Datei im Karte-Format"
  task :import, [ :file_path, :topic_name, :exam_type, :limit ] => :environment do |_t, args|
    file_path = args[:file_path]
    topic_name = args[:topic_name]
    exam_type = args[:exam_type] || "ap1"
    limit = args[:limit]&.to_i

    topic = Topic.find_by!(name: topic_name)
    content = File.read(file_path)

    blocks = content.split(/^---\s*$/).map(&:strip).select { |b| b.start_with?("## Karte") }
    blocks = blocks.first(limit) if limit

    imported = 0

    blocks.each do |block|
      title    = block[/^## Karte \d+:\s*(.+)$/, 1]
      inhalt   = block[/^\*\*Inhalt:\*\*\s*(.+)$/, 1]
      schwierigkeit = block[/^\*\*Frage \((Leicht|Schwer)\):\*\*/, 1]
      frage = block[/^\*\*Frage \((?:Leicht|Schwer)\):\*\*\s*(.+)$/, 1]
      option_a = block[/^A\)\s*(.+)$/, 1]
      option_b = block[/^B\)\s*(.+)$/, 1]
      option_c = block[/^C\)\s*(.+)$/, 1]
      option_d = block[/^D\)\s*(.+)$/, 1]
      loesung  = block[/^\*\*Lösung:\*\*\s*([ABCD])$/, 1]

      if [ title, inhalt, schwierigkeit, frage, option_a, option_b, option_c, option_d, loesung ].any?(&:nil?)
        puts "Übersprungen (unvollständig geparst): #{title || 'unbekannt'}"
        next
      end

      next if Flashcard.exists?(question: title, topic: topic)

      card = Flashcard.create!(
        topic: topic,
        question: title,
        answer: inhalt,
        exam_type: exam_type
      )

      question = card.build_multiple_choice_question(
        question_text: frage,
        difficulty: schwierigkeit.downcase
      )

      options = { "A" => option_a, "B" => option_b, "C" => option_c, "D" => option_d }
      options.each do |letter, text|
        question.answer_options.build(text: text, correct: letter == loesung)
      end
      question.save!

      imported += 1
    end

    puts "#{imported} Flashcards importiert (Topic: #{topic_name}, exam_type: #{exam_type})."
  end
end
