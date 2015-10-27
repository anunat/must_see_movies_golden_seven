class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find_by({:id => params[:id]})
  end

  def new_form

  end

  def create_row

    p = Actor.new
    p.name = params[:the_name]
    p.dob = params[:the_dob]
    p.bio = params[:the_bio]
    p.image_url = params[:the_image_url]
    p.save

    redirect_to("/actors")

  end

  def destroy

    p= Actor.find_by({:id => params[:id]})

    p.destroy

    redirect_to("/actors")

  end

  def edit_form

    @actor = Actor.find_by({:id => params[:id]})

  end

  def update_row

    p = Actor.find_by({:id => params[:id]})
    p.name = params[:the_name]
    p.bio = params[:the_bio]
    p.image_url = params[:the_image_url]
    p.dob = params[:the_dob]
    p.save

    redirect_to("/actors")

  end

end
