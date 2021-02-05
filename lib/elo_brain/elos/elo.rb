# frozen_string_literal: true

module EloBrain
  module Elos
    class Elo < Dry::Struct
      attribute :player1, Types::Player
      attribute :player2, Types::Player

      def self.from(player1:, player2:)
        new(
          player1: player1,
          player2: player2
        )
      end

      def self.from_contract(contract:)
        new(
          player1: contract[:player1],
          player2: contract[:player2]
        )
      end

      def calculate_new_elos
        {
          player1_new_elo: EloBrain::Elos::Services::LaunchNewEloCalculation.new.call(strategy: player1.situation,
                                                                                      nb_matches: player1.nb_matches, player_elo: player1.elo, opponent_elo: player2.elo),
          player2_new_elo: EloBrain::Elos::Services::LaunchNewEloCalculation.new.call(strategy: player2.situation,
                                                                                      nb_matches: player2.nb_matches, player_elo: player2.elo, opponent_elo: player1.elo)
        }
      end
    end
  end
end
