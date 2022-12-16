require 'grammar_stats'

RSpec.describe GrammarStats do
    context "Given text that begins with capital and ends with suitable punctuation" do
        it "Adds true to the checked texts array" do
            grammar_stats = GrammarStats.new('To beat a crow to death')
            result = grammar_stats.check("This book is excellent, the mockingbird is old news.")
            expect(result).to eq [true]
        end
    end
    context "Given text that does not fit desired parameters" do
        it "Adds false to the checked texts array" do
            grammar_stats = GrammarStats.new('Of rabbits and heavy handed guys')
            result = grammar_stats.check("Can't believe he pet a woman to death")
            expect(result).to eq [false]
        end
    end
    context "Given text that will return true" do
        it "returns correct percentage of checked tests" do
            grammar_stats = GrammarStats.new('Pretentious and judgemental')
            grammar_stats.check("Why is this book so highly rated?")
            result = grammar_stats.percentage_good
            expect(result).to eq 100
        end
    end
    context "Given text that will return false" do
        it "returns correct percentage of checked tests" do
            grammar_stats = GrammarStats.new('The sit')
            grammar_stats.check("stephen king is a fantastic crime thriller author!")
            result = grammar_stats.percentage_good
            expect(result).to eq 0
        end
    end
end