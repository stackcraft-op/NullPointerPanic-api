# frozen_string_literal: true

module Api
  class RankingsController < ApplicationController
    # Rangliste nach gesamten Erfahrungspunkten
    def overall
      # .includes(:user) verhindert N+1-Abfragen, da wir gleich p.user.username brauchen
      entries = Profile.includes(:user)
                       .map { |p| Leaderboard::Entry.new(p.user, p.experience) }
                       # -e.score dreht die Sortierung um
                       .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      # Beide Infos (Top 10 + eigener Rang) in EINER Response, kein zweiter Request noetig
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end


    # Rangliste der aktuellen Kalenderwoche (Mo-So).
    def weekly
      # beginning_of_week ist standardmaessig Montag
      week_range = Date.current.beginning_of_week..Date.current.end_of_week

      # Zaehlt pro User, wie viele richtige Antworten diese Woche vorliegen.
      # Ergebnis ist ein Hash: { user_id => anzahl }
      correct_counts = ProgressEntry
                         .where(correct: true, answered_at: week_range)
                         .group(:user_id)
                         .count

      # WICHTIG: User.all statt nur die User aus correct_counts, sonst wuerden
      # User ohne Antworten diese Woche komplett fehlen (auch bei "me")
      entries = User.all
                    # correct_counts[user.id] ist nil, falls der User diese Woche nichts
                    # beantwortet hat -> || 0 sorgt fuer einen sauberen Score von 0
                    .map { |user| Leaderboard::Entry.new(user, correct_counts[user.id] || 0) }
                    .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end

    # Rangliste nach Bundesland
    def by_state
      state = params[:state]

      if state.blank?
        return render json: { error: "Bundesland fehlt" }, status: :unprocessable_entity
      end

      entries = Profile.includes(:user)
                       .where(state: state)
                       .map { |p| Leaderboard::Entry.new(p.user, p.experience) }
                       .sort_by { |e| -e.score }

      leaderboard = Leaderboard.new(entries)
      render json: { top: leaderboard.top, me: leaderboard.me(@current_user) }
    end
  end
end
