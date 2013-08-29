class PostsController < ApplicationController

    def index
      @all_posts = Post.all
    end

    # GET new_message_url
    def new
      @post = Post.new
    end

    # POST messages_url
    def create
      @post = Post.new(post_params)
      #TODO: Assign created_by to current user.
      @post.created_by = "Billy"
      if @post.save
        redirect_to post_path(@post)
      else
        raise "Post couldn't be saved."
      end
    end

    # GET message_url(:id => 1)
    def show
      @post = Post.find(params[:id])
      # find and return a specific message
    end

    # GET edit_message_url(:id => 1)
    def edit
      # return an HTML form for editing a specific message
    end

    # PUT message_url(:id => 1)
    def update
      # find and update a specific message
    end

    # DELETE message_url(:id => 1)
    def destroy
      # delete a specific message
    end

    private

    def post_params
      params.require(:post).permit(:title, :content)
    end

end
