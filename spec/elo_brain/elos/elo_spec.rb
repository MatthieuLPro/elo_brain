# frozen_string_literal: true

module EloBrain
  module Elos
    RSpec.describe Elo do
      let(:instance) { described_class }

      describe '#from' do
        subject { instance.from(player1: player1, player2: player2) }
        context 'with valid parameters' do
          let(:player1) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo') }
          let(:player2) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo') }

          it 'expected to create an object' do
            expect(subject.class).to eq(described_class)
          end
        end
      end

      describe '#from_contract' do
        subject { instance.from_contract(contract: contract) }
        context 'with valid parameters' do
          let(:contract) do
            {
              player1: EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo'),
              player2: EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo')
            }
          end

          it 'expected to create an object' do
            expect(subject.class).to eq(described_class)
          end
        end
      end

      describe '#calculate_new_elos' do
        subject { instance.from_contract(contract: contract).calculate_new_elos }
        context 'with valid parameters' do
          let(:player1) { EloBrain::Players::Player.new(elo: 1400, nb_matches: 1, situation: 'winner') }
          let(:player2) { EloBrain::Players::Player.new(elo: 1300, nb_matches: 1, situation: 'looser') }
          let(:contract) do
            {
              player1: player1,
              player2: player2
            }
          end

          it 'expected to create an hash' do
            expect(subject.class).to eq(Hash)
          end

          it 'expected to calculates new values' do
            expect(subject[:player1_new_elo]).to_not eq(player1.elo)
            expect(subject[:player2_new_elo]).to_not eq(player2.elo)
          end
        end
      end
    end
  end
end
