class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def edit; end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else
      render :edit
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, attachments_attributes: %i[id file destroy])
  end
end
