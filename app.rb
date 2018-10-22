require 'sinatra/base'
require './lib/bookmarks'

class App < Sinatra::Base
  get '/' do
    erb(:index)
  end
  get '/bookmarks' do
    @bookmarks = Bookmarks.all.join("\n")
    erb(:bookmarks)
  end
  run! if app_file == $0
end
