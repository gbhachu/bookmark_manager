
feature 'view links' do
  scenario 'see list of links on the homepage' do
    Link.create(url: 'http://google.com', title: 'Google Homepage')
    visit '/links'
    expect(page).to have_content ('http://google.com')
  end
end
