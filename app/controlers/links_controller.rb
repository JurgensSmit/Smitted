class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new 
  end

def new
   @link = Link.new
  end

  def create
    @link = current_user.links.create(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
end
  end

  def destroy
    Link.find(params[:id]).destroy
    redirect_to root_url
  end
  end