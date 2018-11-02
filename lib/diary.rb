require 'pg'

class Diary
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_test')
    else
      connection = PG.connect(dbname: 'diary')
    end
    result = connection.exec("SELECT * FROM diaries;")
    result.map { |diary| diary['body']}
  end
end
