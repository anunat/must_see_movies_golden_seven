class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find_by({:id => params[:id]})
  end

  def new_form

  end

  def create_row

    p = Movie.new
    p.title = params[:the_title]
    p.year = params[:the_year]
    p.duration = params[:the_duration]
    p.description = params[:the_description]
    p.image_url = params[:the_image_url]
    p.save

    redirect_to("http://localhost:3000")

  end

  def destroy

    p= Movie.find_by({:id => params[:id]})

    p.destroy

    redirect_to("http://localhost:3000")

  end

  def edit_form

    @movie = Movie.find_by({:id => params[:id]})

  end

  def update_row

    p = Movie.find_by({:id => params[:id]})
    p.title = params[:the_title]
    p.year = params[:the_year]
    p.duration = params[:the_duration]
    p.description = params[:the_description]
    p.image_url = params[:the_image_url]
    p.save

    redirect_to("http://localhost:3000")

  end

end
