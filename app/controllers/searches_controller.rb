class SearchesController < ApplicationController

    def new
        @search = Search.new
        result = FypPoster.all
        @supervisors = result.uniq.pluck(:supervisor_name)
        @moderators = result.uniq.pluck(:moderator_name)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end

    private

    def search_params
        params.require(:search).permit(:keywords, :p_id, :student_name, :student_id, :supervisor_name, :moderator_name)
    end

end
