# As a time-pressed user
# So that I can organise my many links into different categories for ease of search
# I would like to tag links in my bookmark manager

feature 'Adding tags' do
  scenario 'I can add a single tag to a new link' do
    visit('/new')
    fill_in('url',   with: 'http://www.makersacademy.com/')
    fill_in('title', with: 'Makers Academy')
    fill_in('tags',  with: 'education')

    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
