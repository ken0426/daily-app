class ContentsController < ApplicationController
  def index
    @content = Content.all.order("created_at DESC")
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    content.update(content_params)
    if content.save
      redirect_to content_path
    else
      render :edit
    end
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to root_path
  end

  def show
    @content = Content.find(params[:id])
  end

  private
  def content_params
    params.require(:content).permit(:title, :contents)
  end
end
