1. Description

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

2. Class interface design

class TrackHistory
    def initialize
        # ...
    end
    def add_track(song)
        # song is a string
        # adds song to array
        # throws error if song already exists in list
    end
end

3. Examples

track_history = TrackHistory.new
result = track_history.add_track('J Cole- Foldin clothes')
expect(result).to eq ['J Cole- Foldin clothes]

track_history = TrackHistory.new
track_history.add_track('Mac Miller- Surf')
result = track_history.add_track('Damien Marley- Affairs of the heart')
expect(result).to eq ['Mac Miller- Surf', 'Damien Marley- Affairs of the heart']

track_history = TrackHistory.new
track_history.add_track('Chase & Status- Heater')
result = track_history.add_track('Chase & Status- Heater')
expect(result).to eq "This track has already been added"

