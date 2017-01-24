reset_database

feature 'Add links' do
  scenario 'Enter a link and add to database' do
    visit('/new')
    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('tags',  with: 'education')

    click_button('Submit')

    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
