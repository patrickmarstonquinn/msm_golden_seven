class MovieController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render("/movie/movie.html.erb")
  end

  def new_movie
    render("movie/new.html.erb")
  end

  def add_movie
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.image_url = params[:image_url]
    m.description = params[:description]
    m.save
    redirect_to("http://localhost:3000/movie/")
  end

  def destroy
    @id = params[:id]
    d = Movie.find(@id)
    d.destroy
    redirect_to("http://localhost:3000/movie/")
  end

  def edit_movie
    @id = params[:id]
    @title = Movie.find(@id).title
    @year = Movie.find(@id).year
    @duration = Movie.find(@id).duration
    @description = Movie.find(@id).description
    @image_url = Movie.find(@id).image_url
    render("movie/edit.html.erb")
  end

  def update_movie
    @id = params["id"]
    @title = Movie.find(@id).title
    @year = Movie.find(@id).year
    @duration = Movie.find(@id).duration
    @description = Movie.find(@id).description
    @image_url = Movie.find(@id).image_url
    m = Movie.find(@id)
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.image_url = params[:image_url]
    m.description = params[:description]
    m.save
    redirect_to("/movie/#{@id}")
  end

  def show
    @id = params[:id]
    @title = Movie.find(@id).title
    @year = Movie.find(@id).year
    @duration = Movie.find(@id).duration
    @description = Movie.find(@id).description
    @image_url = Movie.find(@id).image_url
    render("movie/show.html.erb")
  end

end
