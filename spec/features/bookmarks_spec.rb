require 'bookmarks'
describe 'testing bookmarks' do
  it 'list bookmarks' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to eq ["www.netflix.com", "www.youtube.com", "www.instagram.com"]
  end
end
