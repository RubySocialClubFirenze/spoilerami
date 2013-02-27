class Spoiler < ActiveRecord::Base
  attr_accessible :film_title, :spoiler, :vote, :vote_counter
end
