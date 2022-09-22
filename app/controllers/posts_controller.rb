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
        @posts =Post.create(params)
        redirect "/posts/#{@posts.id}" 
    end

    get '/posts/:id/edit' do
        @post = Post.find(params[:id])

        # retrieve the object
        # autofill form with details
        # render to user to fill out
        erb:'posts/edit'

    end

    patch '/posts/:id' do 
        @post = Post.find(params[:id])
        @post.update(title: params[:title],content: params[:content])
        redirect "/posts/#{@post.id}" 

    end

    delete '/posts/:id' do
        @post = Post.find(params[:id])
        @post.destroy
        redirect '/posts'     
     end

end