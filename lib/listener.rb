class Listener

    attr_accessor :username

    @@all = []

    def initialize(username)
        @username = username

        @@all << self
    end

    def self.all
        @@all
    end

    #How do we know what Podcast an instance listens to?
    def listeners
        Rating.all.select do |rating|
            rating.listener == self
        end
    end

    #Find the Podcasts a listener listens to.
    def podcasts
        # return a new array of all podacasts from listener
        listeners.map {|listener| listener.podcast}
    end

    #Find the Title of each Podcast of the listener
    def podcast_title
        # return an array of all of listeners podcast titles
        listeners.map {|listener| listener.podcast.title}
    end

    #Find all of listeners podcast titles that start with 's'
    def title_starts_with_s
        #listeners.find_all {|listener| listener.podcast.title.start_with?('S')}
        podcast_title.select do |x|
            if x.start_with?('S')
                "#{x}"
            end
        end
    end

    

end
