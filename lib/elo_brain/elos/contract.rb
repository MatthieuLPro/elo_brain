# frozen_string_literal: true

module EloBrain
  module Elos
    class Contract < Dry::Validation::Contract
      params do
        required(:player1).value(:player)
        required(:player2).value(:player)
      end

      rule(:player1, :player2) do
        key.failure('must have a unique different situation for players') if values[:player1].situation == values[:player2].situation
      end
    end
  end
end
