require 'make_snippet'

RSpec.describe "make_snippet method" do
    context "given a string of 5 or less words" do
        it "returns the string " do
            result = make_snippet("This five word string example")
            expect(result).to eq "This five word string example"
        end
    end

    context "given a string of more than five words" do
        it "returns the first five words followed by ..." do
            result = make_snippet("I am forcing errors here in order to practice test-driven development")
            expect(result).to eq "I am forcing errors here..."
        end
    end
end
