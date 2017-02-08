class DirectorController < ApplicationController

  def index
    @list_of_directors = Director.all
    render("/director/director.html.erb")
  end

  def new_director
    render("director/new.html.erb")
  end

  def add_director
    d = Director.new
    d.name = params[:name]
    d.dob = params[:dob]
    d.image_url = params[:image_url]
    d.bio = params[:bio]
    d.save
    redirect_to("http://localhost:3000/director/")
  end

  def destroy
    @id = params[:id]
    d = Director.find(@id)
    d.destroy
    redirect_to("http://localhost:3000/director/")
  end

  def edit_director

    @id = params[:id]
    @name = Director.find(@id).name
    @bio = Director.find(@id).bio
    @dob = Director.find(@id).dob
    @image_url = Director.find(@id).image_url
    render("director/edit.html.erb")
  end

  def update_director

    @id = params["id"]

    @name = params[:name]
    @dob = params[:dob]
    @bio = params[:bio]
    @image_url = params[:image_url]
    d = Director.find(@id)
    d.name = @name
    d.dob = @dob
    d.bio = @bio
    d.image_url = @image_url
    d.save

    # d = Director.find_by({:id => params[:id]})
    # d.name = params[:name]
    # d.bio = params[:bio]
    # d.image_url = params[:image_url]
    # d.dob = params[:dob]
    # d.save
    redirect_to("/director/#{@id}")
  end

  def show
    @id = params[:id]
    @name = Director.find(@id).name
    @bio = Director.find(@id).bio
    @dob = Director.find(@id).dob
    @image_url = Director.find(@id).image_url
    render("director/show.html.erb")
  end

end
