class TrackHistory
    def initialize
        @tracklist = []
    end
    def add_track(song)
        if @tracklist.include?(song)
            return "This track has already been added"
        else
            return @tracklist << song
        end
    end
end