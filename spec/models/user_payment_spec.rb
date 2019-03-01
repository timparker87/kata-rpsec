require 'rails_helper'

RSpec.describe UserPayment, type: :model do

  subject do
    described_class.new
  end

  describe '#process' do 

    it 'returns a success message if payment is successful STUB' do 
      allow(Payment).to receive(:new) { double(Payment, charge: 'success') }
      expect(subject.process).to eq 'success'
    end

    it 'returns a success message if payment is successful MOCK' do
      double = double(Payment)
      expect(Payment).to receive(:new) { double }
      expect(double).to receive(:charge).with(50) { 'success' }
      expect(subject.process).to eq 'success'
    end

    it 'returns a success message if payment is successful MOCK' do
      allow(Payment).to receive(:new) { double(Payment, charge: 'success') }


      double = double(SecondPayment)
      expect(Payment).to receive(:new) { double }
      expect(double).to receive(:charge).with(50) { 'success' }
      expect(subject.process).to eq 'success'
    end



  end
end