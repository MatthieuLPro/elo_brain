# frozen_string_literal: true

module EloBrain
  module EloCalculations
    RSpec.describe Variation do
      let(:instance) { described_class.new }
      let(:elo) { 100 }
      let(:development_coefficient) { 10 }
      let(:win_probability) { 0.5 }

      describe '#new_elo' do
        subject do
          instance.new_elo(
            _elo: elo,
            _development_coefficient: development_coefficient,
            _win_probability: win_probability
          )
        end
        it 'expected to has a class new_elo' do
          expect(subject).to eq('Must call a strategy')
        end
      end
    end
  end
end
