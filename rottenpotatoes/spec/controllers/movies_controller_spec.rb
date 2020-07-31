require 'rails_helper'

describe MoviesController do
  before(:each) do
    @movie_1 = Movie.create(title: 'Interstellar', director: 'Christopher Nolan')
    @movie_2 = Movie.create(title: 'Dunkirk', director: 'Christopher Nolan')
    @movie_3 = Movie.create(title: 'Parasite', director: 'Bong Joon Ho')
    @movie_4 = Movie.create(title: 'Everything Before Us')
  end
end