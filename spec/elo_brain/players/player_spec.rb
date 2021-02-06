# frozen_string_literal: true

module EloBrain
  module Players
    RSpec.describe Player do
      let(:instance) { described_class }

      describe '#from' do
        subject { instance.from(elo: elo, nb_matches: nb_matches, situation: situation) }
        context 'with valid parameters' do
          let(:elo) { 1 }
          let(:nb_matches) { 2 }
          let(:situation) { 'foo' }

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
              elo: 1,
              nb_matches: 2,
              situation: 'foo',
            }
          end

          it 'expected to create an object' do
            expect(subject.class).to eq(described_class)
          end
        end
      end
    end
  end
end
