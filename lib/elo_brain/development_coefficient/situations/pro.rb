# frozen_string_literal: true

module EloBrain
  module DevelopmentCoefficient
    module Situations
      class Pro
        COEFFICIENT = EloBrain::Constants.new.read('development_coefficient', 'pro', 'coefficient')
        ELO_MIN = EloBrain::Constants.new.read('development_coefficient', 'pro', 'elo_min')
        def initialize(elo:)
          @elo = elo
        end

        def eligible?
          @elo > ELO_MIN
        end
      end
    end
  end
end
