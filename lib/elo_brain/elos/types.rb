# frozen_string_literal: true

module EloBrain
  module Elos
    module Types
      include Dry.Types()

      Player = Types.Instance(EloBrain::Players::Player)
    end
  end
end
