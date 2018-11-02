feature 'Entering a new diaries' do
  scenario 'A user can add a diary' do
    visit('/new')
    fill_in('body', with: 'Rome is the best city to visit in Europe')
    click_button('Submit')
    expect(page).to have_content 'Rome is the best city to visit in Europe'
  end
end
