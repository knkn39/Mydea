class NotesController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]
    # before_action :search_graphic_note, only: [:graphic]
    # before_action :search_typography_note, only: [:typography]
    # before_action :search_ui_note, only: [:ui]

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

    # def graphic
    #     @graphics = Note.where(category:"graphic") 
    #     @notes = @q.result
    #     graphic_id = params[:q][:graphic_id_eq]
    #     @graphic = Graphic.find_by(id: graphic_id)
    # end

    # def typography
    #     @typographies = Note.where(category:"typography") 
    #     @notes = @t.result
    #     typography_id = params[:t][:typography_id_eq]
    #     @typography = Typography.find_by(id: typography_id)
    # end

    # def ui
    #     @uis = Note.where(category:"ui") 
    #     @notes = @u.result
    #     ui_id = params[:u][:ui_id_eq]
    #     @ui = UI.find_by(id: ui_id)
    # end



    private
    def note_params
        params.require(:note).permit(:caption, :image )
    end

    # def search_graphic_note
    #     @q = Note.ransack(params[:q])
    # end

    # def search_typography_note
    #     @t = Note.ransack(params[:t])
    # end

    # def search_ui_note
    #     @u = Note.ransack(params[:u])
    # end

end
