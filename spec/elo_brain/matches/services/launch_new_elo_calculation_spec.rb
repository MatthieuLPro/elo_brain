# frozen_string_literal: true

module EloBrain
  module Matches
    module Services
      RSpec.describe LaunchNewEloCalculation do
        let(:instance) { described_class.new }

        describe '#call' do
          subject do
            instance.call(
              strategy: strategy,
              nb_matches: nb_matches,
              player_elo: player_elo,
              opponent_elo: opponent_elo
            )
          end
          context 'with valid parameters' do
            let(:strategy) { 'winner' }
            let(:nb_matches) { 1 }
            let(:player_elo) { 100 }
            let(:opponent_elo) { 200 }

            it 'expected to return a float' do
              expect(subject.class).to eq(Float)
            end

            it 'expected to return a different value' do
              expect(subject).to_not eq(player_elo)
            end
          end
        end
      end
    end
  end
end
