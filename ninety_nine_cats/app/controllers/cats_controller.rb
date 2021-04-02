class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    private

    def cat_params
        params.require(:cats).permit(:name, :sex, :color, :birth_date, :description)
    end


end