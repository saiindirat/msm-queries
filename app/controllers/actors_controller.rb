class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all.order({ :dob => :desc, :name => :asc })
  end

  def show
    @the_actor = Actor.find(params[:the_id])
  end
end
