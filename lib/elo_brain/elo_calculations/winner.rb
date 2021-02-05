# frozen_string_literal: true

module EloBrain
  module EloCalculations
    class Winner < Variation
      def new_elo(elo:, development_coefficient:, win_probability:)
        elo + development_coefficient * (1.0 - win_probability)
      end
    end
  end
end