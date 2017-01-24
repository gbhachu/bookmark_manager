reset_database
# As a time-pressed user
# So that I can organise my many links into different categories for ease of search
# I would like to tag links in my bookmark manager


feature 'add links' do
  scenario 'enter a link and add to database' do
    visit('/new')
    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk')
    fill_in('tags', with: 'education')
    click_button('Submit')

    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
