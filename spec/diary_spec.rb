require 'diary'

describe Diary do
  describe '.all' do
    it 'returns all diaries' do
      connection = PG.connect(dbname: 'diary_test')
      connection.exec("INSERT INTO diaries (body) VALUES ('First diary');")
      connection.exec("INSERT INTO diaries (body) VALUES ('Second diary');")
      connection.exec("INSERT INTO diaries (body) VALUES ('Third diary');")

      diaries = Diary.all

      expect(diaries).to include("First diary")
      expect(diaries).to include("Second diary")
      expect(diaries).to include("Third diary")
    end
  end
end
