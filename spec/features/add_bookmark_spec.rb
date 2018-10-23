feature 'adding bookmarks' do
  scenario 'user can add new bookmarks' do
    visit ('/bookmarks')
    fill_in(:bookmark, with: 'www.twitter.com')
    click_button('Submit')
    expect(page).to have_content 'www.twitter.com'
  end
end
