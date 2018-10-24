class Api::V1::NotesController < ApplicationController

def index
  @notes = Note.all
  render json: @notes
end

def show
  @note = Note.find(params[:id])
  render json: @note
end

def create
 @note = Note.create(note_params)
 render json: @note
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
