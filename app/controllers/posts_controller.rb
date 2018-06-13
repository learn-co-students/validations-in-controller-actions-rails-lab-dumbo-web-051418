class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)

      redirect_to post_path(@post)
    # Change PostsController#update to re-render the
    # form if the updated post is invalid.
    else
      render :new
  end
end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
