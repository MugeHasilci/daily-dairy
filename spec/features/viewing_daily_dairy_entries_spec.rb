feature 'visiting the homepage' do
   scenario 'the page title is visible' do
     visit '/'
      expect(page).to have_content 'Daily Diary'
   end
 end


feature 'Viewing diaries' do
  scenario 'A user can see diary entries' do
    visit('/diaries')
    expect(page).to have_content "First diary"
    expect(page).to have_content "Second diary"
    expect(page).to have_content "Third diary"
  end
end
