class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # it wants me to check by creating a new instance
    @author = Author.new(author_params)
    # then check it
    if @author.valid?
      # then save it
      @author.save
      redirect_to author_path(@author)
    else
      # render again if validations fail
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
