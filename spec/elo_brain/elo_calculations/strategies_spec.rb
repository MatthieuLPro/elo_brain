# frozen_string_literal: true

module EloBrain
  module EloCalculations
    RSpec.describe Strategies do
      let(:instance) { described_class.new }

      describe '#call' do
        subject do
          instance.call(strategy: strategy)
        end
        context 'with existing strategy name' do
          let(:strategy) { 'winner' }

          it 'expected to create an object' do
            expect(subject.class).to eq(EloBrain::EloCalculations::Winner)
          end
        end

        # TODO: Manager error if strategy does not exist (Monad ?)
        # context 'with not existing strategy name' do
        #   let(:strategy) { 'foo' }
        #
        #   it 'expected to raise an error' do
        #     expect(subject).to raise_error
        #   end
        # end
      end
    end
  end
end
