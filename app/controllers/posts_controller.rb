class PostsController < ApplicationController

    def index
        post = Post.all
        render json:post
    end

    def create
        newPost = Post.create(username: params['username'], content: params['content'])
        render json:newPost
    end
end
