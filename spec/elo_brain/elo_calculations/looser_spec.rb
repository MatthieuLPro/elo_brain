# frozen_string_literal: true

module EloBrain
  module EloCalculations
    RSpec.describe Looser do
      let(:instance) { described_class.new }
      let(:elo) { 100 }
      let(:development_coefficient) { 10 }
      let(:win_probability) { 0.5 }

      describe '#new_elo' do
        subject do
          instance.new_elo(
            elo: elo,
            development_coefficient: development_coefficient,
            win_probability: win_probability
          )
        end
        it 'expected to be lower than current_elo' do
          expect(subject).to be < elo
        end
      end
    end
  end
end
