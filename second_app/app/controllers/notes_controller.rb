class NotesController < ApplicationController
    #Create
    def new
        @token = form_authenticity_token
    end
    
    def create
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
        @token = form_authenticity_token
        @note = Note.find params[:id]
    end

    #Update
    def edit
        @note = Note.find params[:id]
        @token = form_authenticity_token
    end

    def update
        note = Note.find params[:id]
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to "/notes/#{note.id}"
    end
    
    #Destroy
    def destroy
        @note = Note.find params[:id]
        @note.destroy
        redirect_to '/notes'
    end
end