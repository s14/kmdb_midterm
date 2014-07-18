class Movie < ActiveRecord::Base
  validates :director_id, :presence => true

  def director
    return Director.find_by({ :id => self.director_id })
  end

  def roles
    return Role.where({ :movie_id => self.id })
  end

  def actors
    return Actor.where({ :id => self.roles.pluck(:actor_id)})
  end
end
