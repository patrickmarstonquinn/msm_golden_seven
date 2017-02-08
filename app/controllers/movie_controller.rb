class MovieController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render("/movie/movie.html.erb")
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
