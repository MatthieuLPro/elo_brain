# frozen_string_literal: true

module EloBrain
  module DevelopmentCoefficient
    RSpec.describe SituationCoefficient do
      let(:instance) { described_class.new }

      describe '#call' do
        subject { instance.call(nb_matches: nb_matches, elo: elo) }
        context 'one of the condition is true' do
          let(:nb_matches) { 25 }
          let(:elo) { 100 }
          it 'expected to not be the default value' do
            expect(subject).to be > 0
          end
        end
      end
    end
  end
end
