class Api::V1::NotesController < ApplicationController

def index
  @notes = Note.all
  @images = Image.all
  render json: {notes: @notes, images: @images}
end

def show
  @note = Note.find(params[:id])
  @images = @note.images
  render json: {note: @note, images: @images}
end

def create

 @note = Note.create(note_params)
   img = Image.create(url: params[:image], title: "Another Image", note_id: @note.id)
 render json: {note: @note, image: img}
end

def update
   @note.update(note_params)
   if @note.save
     render json: @note, status: :accepted
   else
     render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
   end
 end

private
def note_params
params.require(:note).permit(:title, :content, :color)
end

end
