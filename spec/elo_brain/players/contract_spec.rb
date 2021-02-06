# frozen_string_literal: true

module EloBrain
  module Players
    RSpec.describe Contract do
      let(:instance) { described_class.new }

      describe '#call' do
        subject do
          instance.call(
            elo: elo,
            nb_matches: nb_matches,
            situation: situation
          )
        end
        context 'with valid parameters' do
          let(:elo) { 1 }
          let(:nb_matches) { 2 }
          let(:situation) { 'winner' }
          it 'expected to does not have an error' do
            expect(subject.errors.to_h.empty?).to eq(true)
          end
        end

        context 'with elo is not positive or zero' do
          let(:elo) { -1 }
          let(:nb_matches) { 2 }
          let(:situation) { 'winner' }
          it 'expected to has errors' do
            expect(subject.errors.messages.first.text).to eq('must be zero or positive')
          end
        end

        context 'with nb_matches is not positive or zero' do
          let(:elo) { 1 }
          let(:nb_matches) { -1 }
          let(:situation) { 'winner' }
          it 'expected to has errors' do
            expect(subject.errors.messages.first.text).to eq('must be zero or positive')
          end
        end

        context 'with situation is not winner or looser' do
          let(:elo) { 1 }
          let(:nb_matches) { 2 }
          let(:situation) { 'foo' }
          it 'expected to has errors' do
            expect(subject.errors.messages.first.text).to eq('must be equal to looser or winner')
          end
        end
      end
    end
  end
end
