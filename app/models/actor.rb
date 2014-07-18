class Actor < ActiveRecord::Base
  validates :name, :uniqueness => true

  def roles
    return Role.where({ :actor_id => self.id })
  end

  def movies
    return Movie.where({ :id => self.roles.pluck(:movie_id) })
  end
end
