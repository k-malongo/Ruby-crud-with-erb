require 'pry'
class ApplicationController < Sinatra::Base
  # set :default_content_type, 'application/json'
  # layout false
  # setup erb

  configure do
    set :views, 'app/views'
    # enable :sessions
    # set :session_secret, "secret"
  end

  # Add your routes here
  get '/' do
    erb :welcome
  end

end
 