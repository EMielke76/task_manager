require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        #Call an instnace method on a Task
        #if the task.title == 'laundry', return true
        #otherwise return false.

        task = Task.create!(title: 'laundry', description: 'clean clothes')
        # Bang on tests
        # Including the bang operator in your test will throw an error if there
        # is an issue within the creation of your mock data/fake test.
        expect(task.laundry?).to eq(true)
      end

      it 'returns false when task title is not laundry' do

        task = Task.create!(title: 'sweep', description: 'clean clothes')

        expect(task.laundry?).to eq(false)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'Football', description: 'boring as hell')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'Laundry Day', description: 'Clean yo shit')

        expect(task.laundry?).to be(true)
      end

      xit 'is case insensitive when checking if the title contains the word laundry' do
      end

      xit 'returns true when the description contains the word laundry' do
      end

      xit 'is case insensitive when checking if the description contains the word laundry' do
      end
    end
  end
end
