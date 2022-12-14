require 'count_words'

RSpec.describe "count_words method" do
    it "returns the number of words in a given string" do
        result = count_words('I like feta cheese')
        expect(result).to eq 4
    end
end