require 'diary'

RSpec.describe DiaryEntry do
    it "Returns a chunk of words the user could read in given time" do
        diary_entry = DiaryEntry.new('flangle', 'dear god help me I am dying here')
        result = diary_entry.reading_chunk(7, 1)
        expect(result).to eq "dear god help me I am dying"
    end

    it "returns the next chunk when called again" do
        diary_entry = DiaryEntry.new('flangle', 'dear god help me I am dying here')
        diary_entry.reading_chunk(3, 1)
        result = diary_entry.reading_chunk(3, 1)
        expect(result).to eq "me I am"
    end

    it "returns to the beginning once all contents are read" do
        diary_entry = DiaryEntry.new('flangle', 'dear god help me I am dying here')
        diary_entry.reading_chunk(8, 1)
        result = diary_entry.reading_chunk(4, 1)
        expect(result).to eq "dear god help me"
    end

    it "calculates reading time" do
        diary_entry = DiaryEntry.new('flangle', 'dear god help me I am dying here')
        result = diary_entry.reading_time(4)
        expect(result).to eq 2
    end
end
