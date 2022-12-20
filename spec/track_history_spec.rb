require 'track_history'

RSpec.describe TrackHistory do
    context "given a song that has been listened to" do
        it "adds the song to an array" do
            track_history = TrackHistory.new
            result = track_history.add_track('J Cole- Foldin clothes')
            expect(result).to eq ['J Cole- Foldin clothes']
        end
    end

    context "given multiple songs that have been listened to" do
        it "returns an array of songs" do
            track_history = TrackHistory.new
            track_history.add_track('Mac Miller- Surf')
            result = track_history.add_track('Damien Marley- Affairs of the heart')
            expect(result).to eq ['Mac Miller- Surf', 'Damien Marley- Affairs of the heart']
        end
    end

    context "given a song that already exists in array" do
        it "returns an error message" do
            track_history = TrackHistory.new
            track_history.add_track('Chase & Status- Heater')
            result = track_history.add_track('Chase & Status- Heater')
            expect(result).to eq "This track has already been added"
        end
    end
end