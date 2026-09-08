# frozen_string_literal: true

class Leaderboard
  # Struct erzeugt eine kleine Klasse mit :user und :score als Attributen
  Entry = Struct.new(:user, :score, :avatar_url, :frame_url)

  def initialize(entries)
    @entries = entries
  end

  # Gibt die Top 10 Eintraege zurueck
  def top(limit: 10)
    @entries.first(limit).map do |entry|
      rank = 1 + @entries.count { |e| e.score > entry.score }
      { rank: rank, id: entry.user.id, username: entry.user.username, score: entry.score, avatar_url: entry.avatar_url, frame_url: entry.frame_url }
    end
  end

  # Findet den Rang eines bestimmten Users, auch wenn er NICHT in den Top 10 ist.
  def me(user)
    my_entry = @entries.find { |e| e.user.id == user.id }
    # User hat keinen Eintrag (z.B. gar nicht in der Liste) -> nil zurueckgeben
    return nil unless my_entry

    # Rang = 1 + Anzahl der Eintraege mit einem hoeheren Score.
    rank = 1 + @entries.count { |e| e.score > my_entry.score }
    { rank: rank, id: my_entry.user.id, username: my_entry.user.username, score: my_entry.score, avatar_url: my_entry.avatar_url, frame_url: my_entry.frame_url  }
  end
end
