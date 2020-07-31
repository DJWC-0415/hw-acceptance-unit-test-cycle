class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.movies_by_same_director title
    director = Movie.find_by(title: title).director
    if director.blank?
      return nil
    end
    return Movie.where(director: director).pluck(:title)
  end
end
