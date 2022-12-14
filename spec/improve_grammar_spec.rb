require 'improve_grammar'

RSpec.describe "improve_grammar method" do
    context "Given a string that doesn't begin with a capital letter" do
        it "returns incorrect" do
            result = grammar_check("what is your name?")
            expect(result).to eq false
        end
    end

    context "Given a string that doesn't end with suitable punctuation" do
        it "returns incorrect" do
            result = grammar_check("How old are you")
            expect(result).to eq false
        end
    end

    context "Given a string that both begins with a capital letter and ends with suitable punctuation" do
        it "returns correct" do
            result = grammar_check("My name is Lauren.")
            expect(result).to eq true
        end
    end
end

