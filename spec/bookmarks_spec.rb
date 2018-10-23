require 'bookmarks'
describe 'testing bookmarks' do
  it 'list bookmarks' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to include "www.youtube.com"
    expect(bookmarks).to include "www.facebook.com"
    expect(bookmarks).to include "www.instagram.com"
  end
end
