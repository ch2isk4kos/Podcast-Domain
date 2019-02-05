class Rating

    attr_accessor :podcast, :listener, :rating

    @@all = []

    def initialize(podcast, listener, rating)
        @podcast = podcast
        @listener = listener
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end

end
