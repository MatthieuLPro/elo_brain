# frozen_string_literal: true

module EloBrain
  module EloCalculations
    class Strategies
      STRATEGIES_COLLECTION = {
        winner: Winner,
        looser: Looser
      }.freeze

      def call(strategy:)
        STRATEGIES_COLLECTION[strategy.to_sym].new
      end
    end
  end
end
