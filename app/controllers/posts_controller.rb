class PostsController < ApplicationController

    def index
        posts = Post.all
        render json:posts
    end

    def create
        newPost = Post.create(username: params['username'], content: params['content'])
        render json:newPost
    end

    def show
        post = Post.find(params[:id])
        render json:post
    end

    def update
        post = Post.find(params[:id])
        post.content = params[:content]
        post.save
        render json:post
    end

    def destroy
        post = Post.find(params[:id])
        post.delete
        render "post deleted"
    end

end
