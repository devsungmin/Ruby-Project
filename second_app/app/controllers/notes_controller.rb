class NotesController < ApplicationController
    #Create
    def New
    end
    
    def create
        #views/notes/create.html.erb를 보여줘라!
        note = Note.new
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to '/notes/new'
    end

    #Read
end