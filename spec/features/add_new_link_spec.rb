# As a time-pressed user
# So that I can organise my links into different categories for ease of search
# I would like to add tags to the links in my bookmark manager

feature 'Add links:' do
  scenario 'Enter a link and add to database' do
    new_link
    expect(page).to have_content 'http://www.bbc.co.uk'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
