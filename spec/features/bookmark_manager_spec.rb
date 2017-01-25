# As a time-pressed user
# So that I can organise my links into different categories for ease of search
# I would like to display links in my bookmark manager

feature 'View links:' do
  scenario 'See list of links on the homepage' do
    Link.create(url: 'http://google.com', title: 'Google Homepage')
    visit '/links'
    expect(page).to have_content ('http://google.com')
  end
end
