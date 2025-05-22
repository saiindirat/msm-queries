class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all.order({ :year => :desc, :title => :asc })
  end

  def show
    @the_movie = Movie.find(params[:the_id])
  end
end
