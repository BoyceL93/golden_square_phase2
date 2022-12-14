require 'reading_time'

RSpec.describe "reading_time_calculation method" do
    context "given empty value" do
        it "returns zero" do
            result = reading_time_calculation(0)
            expect(result).to eq (0)
        end
    end

    context "given number less than 200" do
        it "returns less than one minute" do
            result = reading_time_calculation(112)
            expect(result).to eq "Less than one minute"
        end
    end

    context "given a number" do
        it "returns number of minutes taken to read text" do
            result = reading_time_calculation(3199)
            expect(result).to eq 15
        end
    end
end