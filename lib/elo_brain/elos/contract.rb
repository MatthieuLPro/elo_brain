# frozen_string_literal: true

module EloBrain
  module Elos
    class Contract < Dry::Validation::Contract
      params do
        required(:player1).value(Types::Player)
        required(:player2).value(Types::Player)
      end

      rule(:player1, :player2) do
        if values[:player1].situation == values[:player2].situation
          key.failure('must have a unique different situation for players')
        end
      end
    end
  end
end
