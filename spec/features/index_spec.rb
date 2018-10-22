feature 'Testing Infrastructure' do
  scenario 'home directory displays bookmarks' do
    visit '/'
    expect(page).to have_content('Bookmarks')
  end
end
