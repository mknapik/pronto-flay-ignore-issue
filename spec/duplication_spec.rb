require 'spec_helper'
require_relative '../lib/duplication'

RSpec.describe Duplication do
  describe '#fibonacci' do
    subject { described_class.fibonacci(n) }

    context 'when negative' do
      it 'is not defined' do
        expect { subject }.to raise_error(StandardError)
      end
    end

    context 'when 0' do
      let(:n) { 0 }
      let(:result) { 1 }

      it { expect(subject).to eq(result) }
    end

    context 'when 1' do
      let(:n) { 1 }
      let(:result) { 1 }

      it { expect(subject).to eq(result) }
    end

    context 'when 2' do
      let(:n) { 2 }
      let(:result) { 2 }

      it { expect(subject).to eq(result) }
    end

    context 'when 3' do
      let(:n) { 3 }
      let(:result) { 3 }

      it { expect(subject).to eq(result) }
    end

    context 'when 4' do
      let(:n) { 4 }
      let(:result) { 5 }

      it { expect(subject).to eq(result) }
    end

    context 'when 5' do
      let(:n) { 5 }
      let(:result) { 8 }

      it { expect(subject).to eq(result) }
    end
  end

end
