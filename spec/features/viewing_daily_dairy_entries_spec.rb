feature 'visiting the homepage' do
   scenario 'the page title is visible' do
     visit '/'
      expect(page).to have_content 'Daily Diary'
   end
 end


feature 'Viewing diaries' do
  scenario 'A user can see diary entries' do
    connection = PG.connect(dbname: 'diary_test')
    Diary.create(body: 'First diary')
    Diary.create(body: 'Second diary')
    Diary.create(body: 'Third diary')
    visit('/diaries')
    expect(page).to have_content "First diary"
    expect(page).to have_content "Second diary"
    expect(page).to have_content "Third diary"
  end
end
