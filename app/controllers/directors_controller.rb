class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find_by({:id => params[:id]})
  end

  def new_form

  end

  def create_row

    @director = Director.new
    @director.name = params[:the_name]
    @director.dob = params[:the_dob]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]
    @director.save

    render("show")

  end

  def destroy

    @director= Director.find_by({:id => params[:id]})

    @director.destroy

  end

  def edit_form

    @director = Director.find_by({:id => params[:id]})

  end

  def update_row

    @director = Director.find_by({:id => params[:id]})
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]
    @director.dob = params[:the_dob]
    @director.save

    render("show")

  end

end
