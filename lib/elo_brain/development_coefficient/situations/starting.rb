# frozen_string_literal: true

module EloBrain
  module DevelopmentCoefficient
    module Situations
      class Starting
        COEFFICIENT = EloBrain::Constants.new.read('development_coefficient', 'starting', 'coefficient')
        NB_MAXIMUM_MATCHES = EloBrain::Constants.new.read('development_coefficient', 'starting', 'nb_maximum_matches')
        def initialize(nb_matches:)
          @nb_matches = nb_matches
        end

        def eligible?
          @nb_matches < NB_MAXIMUM_MATCHES
        end
      end
    end
  end
end
