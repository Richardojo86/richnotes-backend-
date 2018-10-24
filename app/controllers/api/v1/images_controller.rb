class Api::V1::ImagesController < ApplicationController
  def index
    @images = Image.all
    render json: @images
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def create
   @image = Image.create(image_params)
   render json: @image
  end

  def update
     @image.update(image_params)
     if @image.save
       render json: @image, status: :accepted
     else
       render json: { errors: @image.errors.full_messages }, status: :unprocessible_entity
     end
   end

  private
  def image_params
  params.require(:image).permit(:title, :content, :color)
  end

  end










end
