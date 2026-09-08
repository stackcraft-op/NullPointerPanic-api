# frozen_string_literal: true

module Api
  class RankingsController < ApplicationController
    def overall
      entries = Profile.includes(:user, :active_avatar_item, :active_frame_item)
                       .map { |p| Leaderboard::Entry.new(p.user, p.experience, p.active_avatar_item&.image_url, p.active_frame_item&.image_url) }
                       .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end

    def weekly
      week_range = Date.current.beginning_of_week..Date.current.end_of_week

      correct_counts = ProgressEntry
                         .where(correct: true, answered_at: week_range, source: :daily)
                         .group(:user_id)
                         .count

      entries = User.includes(profile: [ :active_avatar_item, :active_frame_item ]).all
                    .map { |user| Leaderboard::Entry.new(user, correct_counts[user.id] || 0, user.profile&.active_avatar_item&.image_url, user.profile&.active_frame_item&.image_url) }
                    .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end

    def by_state
      state = params[:state]

      if state.blank?
        return render json: { error: "Bundesland fehlt" }, status: :unprocessable_entity
      end

      entries = Profile.includes(:user, :active_avatar_item, :active_frame_item)
                       .where(state: state)
                       .map { |p| Leaderboard::Entry.new(p.user, p.experience, p.active_avatar_item&.image_url, p.active_frame_item&.image_url) }
                       .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end
  end
end
