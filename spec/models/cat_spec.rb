require 'rails_helper'

RSpec.describe Cat, type: :model do
  it { should validate_presence_of :name }

  describe 'cats name validation' do

    context 'first letter' do
      it 'allows it to be capital' do
        cat = Cat.new(name: 'Cat')
        cat.valid?

        expect(cat.errors[:name].count).to eq 0
      end

      it 'doesnt allow it to be lowercase' do
        cat = Cat.new(name: 'cat')
        cat.valid?

        expect(cat.errors[:name].count).to eq 1
        expect(cat.errors[:name]).to include 'first letter must be capitalized'
      end
    end
  end
end
