class QuestionsController < ApplicationController
  def question_1
    # How many movies on the list did Francis Ford Coppola direct?

    the_director = Director.find_by({ :name => "Francis Ford Coppola" })

    @number_of_movies_by_coppola = the_director.movies.count
  end

  def question_2
    # Who directed the oldest movie on the list?

    # Your Ruby goes here.

    @director_of_oldest_movie = Movie.order("year ASC").first.director
  end

  def question_3
    # What is the oldest movie on the list directed by Francis Ford Coppola?

    # Your Ruby goes here.

    the_director = Director.find_by({ :name => "Francis Ford Coppola" })

    @oldest_movie_by_coppola = the_director.movies.order("year ASC").first
  end

  def question_4
    # What is the most recent movie on the list directed by Francis Ford Coppola?

    # Your Ruby goes here.

    the_director = Director.find_by({ :name => "Francis Ford Coppola" })

    @most_recent_movie_by_coppola = the_director.movies.order("year DESC").first
  end

  def question_5
    # What is the most recent movie on the list that Harrison Ford appeared in?

    the_actor = Actor.find_by({ :name => "Harrison Ford" })

    # Your Ruby goes here.

    @most_recent_movie_by_ford = the_actor.movies.order("year DESC").first
  end
end
