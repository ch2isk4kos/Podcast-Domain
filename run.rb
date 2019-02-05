require 'pry'
require_relative 'lib/listener.rb'
require_relative 'lib/podcast.rb'
require_relative 'lib/rating.rb'

chris = Listener.new("Chris")
cristian = Listener.new("Cristian")

podcast_1 = Podcast.new("The Dan Lebatard Show")
podcast_2 = Podcast.new("Cumtown")
podcast_3 = Podcast.new("Skip & Shannon")
podcast_4 = Podcast.new("Syntax")
podcast_5 = Podcast.new("S.O.L")

Rating.new(podcast_1, chris, 5)
Rating.new(podcast_2, cristian, 2)
Rating.new(podcast_3, chris, 4)
Rating.new(podcast_4, chris, 3)
Rating.new(podcast_5, chris, 1)

binding.pry
0
