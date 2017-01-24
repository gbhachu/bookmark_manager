feature 'add links' do
  scenario 'enter a link and add to database' do
    visit('/new')
    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Submit')

    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
