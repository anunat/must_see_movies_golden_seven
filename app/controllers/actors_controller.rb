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

    @actor = Actor.new
    @actor.name = params[:the_name]
    @actor.dob = params[:the_dob]
    @actor.bio = params[:the_bio]
    @actor.image_url = params[:the_image_url]
    @actor.save

    render("show")

  end

  def destroy

    @actor= Actor.find_by({:id => params[:id]})

    @actor.destroy

    # redirect_to("/actors")

  end

  def edit_form

    @actor = Actor.find_by({:id => params[:id]})

  end

  def update_row

    @actor = Actor.find_by({:id => params[:id]})
    @actor.name = params[:the_name]
    @actor.bio = params[:the_bio]
    @actor.image_url = params[:the_image_url]
    @actor.dob = params[:the_dob]
    @actor.save

    render("show")

  end

end
