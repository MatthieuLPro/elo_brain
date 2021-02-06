# frozen_string_literal: true

module EloBrain
  module DevelopmentCoefficient
    module Situations
      class Amateur
        COEFFICIENT = EloBrain::Constants.new.read('development_coefficient', 'amateur', 'coefficient')
        ELO_MAX = EloBrain::Constants.new.read('development_coefficient', 'amateur', 'elo_max')
        def initialize(elo:)
          @elo = elo
        end

        def eligible?
          @elo < ELO_MAX
        end
      end
    end
  end
end
