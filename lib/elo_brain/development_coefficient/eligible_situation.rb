# frozen_string_literal: true

module EloBrain
  module DevelopmentCoefficient
    class EligibleSituation
      def initialize(default_condition, *conditions)
        @default_condition = default_condition
        @conditions = conditions
      end

      def situation
        @conditions.each do |condition|
          return condition if condition.eligible?
        end
        @default_condition
      end
    end
  end
end
