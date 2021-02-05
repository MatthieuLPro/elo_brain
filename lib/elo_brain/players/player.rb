# frozen_string_literal: true

module EloBrain
  module Players
    class Player < Dry::Struct
      attribute :elo, Types::Strict::Integer
      attribute :nb_matches, Types::Strict::Integer
      attribute :situation, Types::Strict::String

      def self.from(elo:, nb_matches:, situation:)
        new(
          elo: elo,
          nb_matches: nb_matches,
          situation: situation
        )
      end
    end
  end
end
