class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all.order({ :dob => :desc })
  end

  def show
    @the_director = Director.find(params[:the_id])
  end

  def youngest
    @the_youngest_director = Director.where.not({ dob: nil }).order(dob: :desc).first
  end

  def eldest
    @the_eldest_director = Director.where.not({ dob: nil }).order(dob: :asc).first
  end
end
