require 'pg'

 def setup_test_database
  connection = PG.connect(dbname: 'diary_test')
   # Clean the bookmarks table
  connection.exec("TRUNCATE diaries;")
end
