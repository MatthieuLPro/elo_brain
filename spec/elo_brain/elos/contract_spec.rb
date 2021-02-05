# frozen_string_literal: true

module EloBrain
  module Elos
    RSpec.describe Contract do
      let(:instance) { described_class.new }

      describe '#call' do
        subject do
          instance.call(
            player1: player1,
            player2: player2
          )
        end
        context 'with valid parameters' do
          let(:player1) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo') }
          let(:player2) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'bar') }

          it 'expected to does not have an error' do
            expect(subject.errors.to_h.empty?).to eq(true)
          end
        end

        context 'with elo is not positive or zero' do
          let(:player1) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo') }
          let(:player2) { EloBrain::Players::Player.new(elo: 1, nb_matches: 1, situation: 'foo') }

          it 'expected to has errors' do
            expect(subject.errors.messages.first.text).to eq('must have a unique different situation for players')
          end
        end
      end
    end
  end
end
