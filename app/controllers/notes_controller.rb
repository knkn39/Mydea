class NotesController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def index
        @notes = Note.all
    end

    def new
        @note = Note.new
    end

    def create
        note = Note.new(note_params)
        note.user_id = current_user.id
        if note.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end


    private
    def note_params
        params.require(:note).permit(:caption, :image )
    end

end
