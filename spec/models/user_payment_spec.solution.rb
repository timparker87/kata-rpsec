require 'rails_helper'

RSpec.describe UserPayment, type: :model do
  
  subject do
    UserPayment.new
  end

  describe '#process' do
    it 'processes the payment in silly way' do
      expect(subject.process).to eq 'success'
    end
  end

  describe '#process2' do
    it 'processes the payment with a stub' do
      allow(Payment).to receive(:new) { double(Payment, charge: 'success') }
      expect(subject.process).to eq 'success'
    end
  end

  describe '#process3' do
    it 'processes the payment with a mock' do
      payment = double(Payment)
      allow(Payment).to receive(:new) { payment } 

      expect(payment).to receive(:charge).with(50) { 'success' }
      expect(subject.process).to eq 'success'
    end
  end

end
