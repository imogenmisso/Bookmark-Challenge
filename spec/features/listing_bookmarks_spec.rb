feature 'lists bookmarks' do
  scenario 'bookmarks directory displays bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("www.youtube.com")
    expect(page).to have_content("www.facebook.com")
    expect(page).to have_content("www.instagram.com")
  end
end
