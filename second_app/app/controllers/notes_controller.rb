class NotesController < ApplicationController
    #Create
    def new
    end
    
    def create
        #views/notes/create.html.erb를 보여줘라!
        note = Note.new
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to "/notes/#{note.id}"
    end

    #Read
    def index
        @notes = Note.all
    end
    
    def show
        @note = Note.find params[:id]
    end

end