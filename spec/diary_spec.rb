require 'diary'

describe Diary do
  describe '.all' do
    it 'returns all diaries' do
      diaries = Diary.all
      
      expect(diaries).to include("First diary")
      expect(diaries).to include("Second diary")
      expect(diaries).to include("Third diary")
    end
  end
end
