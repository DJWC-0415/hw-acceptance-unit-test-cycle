require 'rails_helper'

describe Movie do
  before(:each) do
    @movie_1 = Movie.create(title: 'Interstellar', director: 'Christopher Nolan')
    @movie_2 = Movie.create(title: 'Dunkirk', director: 'Christopher Nolan')
    @movie_3 = Movie.create(title: 'Parasite', director: 'Bong Joon Ho')
    @movie_4 = Movie.create(title: 'Everything Before Us')
  end
  
  it 'should find movies by the same director' do
    expect(Movie.movies_by_same_director(@movie_1.title)).to eql(['Interstellar', 'Dunkirk'])
    expect(Movie.movies_by_same_director(@movie_2.title)).to eql(['Interstellar', 'Dunkirk'])
    expect(Movie.movies_by_same_director(@movie_3.title)).to eql(['Parasite'])
  end
  
  it 'should handle sad path when the movie has no director' do
    expect(Movie.movies_by_same_director(@movie_4.title)).to eql(nil)
  end
end