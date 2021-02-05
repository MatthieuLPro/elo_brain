# frozen_string_literal: true

module EloBrain
  module EloCalculations
    class Looser < Variation
      def new_elo(elo:, development_coefficient:, win_probability:)
        elo - development_coefficient * (MAX_PROBABILITY - win_probability)
      end
    end
  end
end
