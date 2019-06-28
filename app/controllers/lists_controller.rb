class ListsController < ApplicationController
    before_action :set_list, only: %i[ show edit update delete]

    def index
        @list = List.new
        @lists = List.all
    end

    def show
    end

    def create
        @list = List.new(list_params)

        if @list.save
            redirect_to list_path(@list)
        else
            render :index
        end
    end
    
    def edit
    end

    def update
    end 

    def delete
    end

    private 

    def set_list
        @list = List.find(params[:id])
    end

    def list_params
        params.require(:list).permit(:name)
    end
end
