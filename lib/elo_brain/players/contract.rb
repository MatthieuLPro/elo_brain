# frozen_string_literal: true

module EloBrain
  module Players
    class Contract < Dry::Validation::Contract
      params do
        required(:elo).value(:integer)
        required(:nb_matches).value(:integer)
        required(:situation).value(:string)
      end

      rule(:elo) do
        key.failure('must be zero or positive') unless value.zero? || value.positive?
      end

      rule(:nb_matches) do
        key.failure('must be zero or positive') unless value.zero? || value.positive?
      end

      rule(:situation) do
        key.failure('must be equal to looser or winner') unless %w[looser winner].include? value
      end
    end
  end
end
