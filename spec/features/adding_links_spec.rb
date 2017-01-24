feature "adding links to database" do
  scenario "user tries to add a link" do
    visit('/links/new')
    fill_in 'url', with: 'www.google.co.uk'
    fill_in 'name', with: 'google'
    click_button 'add'
    visit('/links')
    within 'ul#links' do
      expect(page).to have_content 'Makers Academy'
    end
  end
end
