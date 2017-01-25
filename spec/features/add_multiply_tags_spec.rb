# As a time-pressed user
# So that I can organise my links into different categories for ease of search
# I would like to add multiple tags to the links in my bookmark manager

feature 'Adding tags:' do
  scenario 'I can add a multiply tags to a new link' do
    new_link(tags: 'education sport')
    link = Link.first
    expect(link.tags.map(&:name)).to include('education','sport')
  end
end
