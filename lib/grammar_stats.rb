class GrammarStats
    def initialize(title)
        @title = title
        @checked_texts = []
    end
    def check(text)
        if text.start_with?(/[A-Z]/) && text.end_with?('.')
            @checked_texts << true
        elsif text.start_with?(/[A-Z]/) && text.end_with?('?')
            @checked_texts << true
        elsif text.start_with?(/[A-Z]/) && text.end_with?('!')
            @checked_texts << true
        else
            @checked_texts << false
        end
    end
    def percentage_good
        true_counter = 0
        @checked_texts.each{ |result| 
            if result == true
                true_counter += 1
            end
        }
        return ((true_counter / @checked_texts.length) * 100).to_i
    end
end
