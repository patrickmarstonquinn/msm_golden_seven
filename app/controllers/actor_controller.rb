class ActorController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render("/actor/actor.html.erb")
  end

  def new_actor
    render("actor/new.html.erb")
  end

  def add_actor
    a = Actor.new
    a.name = params[:name]
    a.dob = params[:dob]
    a.image_url = params[:image_url]
    a.bio = params[:bio]
    a.save
    redirect_to("http://localhost:3000/actor/")
  end

  def destroy
    @id = params[:id]
    d = Actor.find(@id)
    d.destroy
    redirect_to("http://localhost:3000/actor/")
  end

  def edit_actor
    @id = params[:id]
    @name = Actor.find(@id).name
    @bio = Actor.find(@id).bio
    @dob = Actor.find(@id).dob
    @image_url = Actor.find(@id).image_url
    render("actor/edit.html.erb")
  end

  def update_actor
    @id = params["id"]
    @name = params[:name]
    @dob = params[:dob]
    @bio = params[:bio]
    @image_url = params[:image_url]
    a = Actor.find(@id)
    a.name = @name
    a.dob = @dob
    a.bio = @bio
    a.image_url = @image_url
    a.save
    redirect_to("/actor/#{@id}")
  end

  def show
    @id = params[:id]
    @name = Actor.find(@id).name
    @bio = Actor.find(@id).bio
    @dob = Actor.find(@id).dob
    @image_url = Actor.find(@id).image_url
    render("actor/show.html.erb")
  end

end
