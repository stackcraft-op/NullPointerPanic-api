class RemoveExamTypeFromTopics < ActiveRecord::Migration[8.1]
  def change
    remove_column :topics, :exam_type, :integer
  end
end
