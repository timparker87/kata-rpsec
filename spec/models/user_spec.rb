require 'rails_helper'

RSpec.describe User, type: :model do

  subject do
    User.new
  end
  
  context 'when the year of birth is 1991' do
    before do
      subject.year_of_birth = 1991
    end

    describe '#age' do
      before do
        subject.year_of_birth = 1991
      end

      it 'returns the users age  given year_of_birth' do      
        expect(subject.age).to eq 28
      end
    end
  end

  describe '#age' do   
    before do
    end

    it 'handles a string year_of_birth' do 
      user = User.new(year_of_birth: '1991')
      expect(user.age).to eq 28
    end 

    it 'handles null values' do 
      user = User.new(year_of_birth: nil)
      expect(user.age).to eq nil
    end 

  end
end
