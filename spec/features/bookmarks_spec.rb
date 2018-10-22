require 'bookmarks'
describe 'testing bookmarks' do
  it 'list bookmarks' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to eq ["Netflix", "Youtube", "Insta"]
  end
end
