# frozen_string_literal: true

module EloBrain
  module Matches
    module Types
      include Dry.Types()

      Player = Types.Instance(EloBrain::Players::Player)
    end
  end
end
