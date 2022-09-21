require 'pry'
class PostsController < ApplicationController

    # <%= %> interpolate ruby in views
    # <% %>

    get '/posts' do
        @posts = Post.all
        erb:'posts/index'
    end

    get '/posts/new' do
        erb:'posts/new'

    end

    get '/posts/:id' do
        @post = Post.find(params[:id])
        erb:'posts/show'

    end

    post '/posts' do
        
    end

    get '/posts/:id/edit' do
        # retrieve the object
        # autofill form with details
        # render to user to fill out
    end

    patch '/posts/:id' do 

    end

    delete 'posts/:id' do 

    end

end