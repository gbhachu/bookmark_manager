# As a time-pressed user
# So that I can organise my links into different categories for ease of search
# I would like to add tags to the links in my bookmark manager

feature 'Adding tags' do
  scenario 'I can add a multiply tags to a new link' do
    visit('/new')
    fill_in('url',   with: 'http://sport.bbc.co.uk/')
    fill_in('title', with: 'BBC Sport')
    fill_in('tags',  with: 'education sport')

    click_button 'Submit'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education','sport')
  end
end
