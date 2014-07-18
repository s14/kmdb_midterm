class Role < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  def actor
    return Actor.find_by({ :id => self.actor_id })
  end

  def movie
    return Movie.find_by({ :id => self.movie_id })
  end
end
