# frozen_string_literal: true

module Api
  class TopicsController < ApplicationController
    def progress
      topics = Topic.all.map do |topic|
        {
          id: topic.id,
          name: topic.name,
          progress_percent: topic.progress_for(@current_user)
        }
      end

      render json: topics
    end
  end
end
