require 'sinatra/base'
require './lib/bookmarks'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end
  get '/bookmarks' do
    @bookmarks = Bookmarks.all.join("\n")
    erb(:'bookmarks/index')
  end
  post '/bookmark_entry' do
    Bookmarks.add_entry(params[:url], params[:title])
    redirect to('/bookmarks')
  end


  run! if app_file == $0
end
