class SearchesController < ApplicationController
    def search
        @type =  params[:type]
      
        if @type == "User"
            @users = User.condition(params[:search], params[:word])

        else
            @books = Book.condition(params[:search], params[:word])
        end
    end
end
