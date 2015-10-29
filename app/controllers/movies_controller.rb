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

    @movie = Movie.new
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.save

    render("show")

  end

  def destroy

    @movie= Movie.find_by({:id => params[:id]})

    @movie.destroy

  end

  def edit_form

    @movie = Movie.find_by({:id => params[:id]})

  end

  def update_row

    @movie = Movie.find_by({:id => params[:id]})
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.save

    render("show")

  end

end
