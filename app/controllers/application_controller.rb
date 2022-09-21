class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  layout false
  # setup erb
  configure do
    set :views, 'app/views'
  end
  # Add your routes here
  get '/' do
    erb :test
  end

end
 