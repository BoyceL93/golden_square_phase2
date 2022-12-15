class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @furthest_read = 0
    end
    def title
        return @title
    end
    def contents
        return @contents
    end
    def count_words
        words = contents.split(' ')
        return words.length
    end
    def reading_time(wpm)
        if wpm == 0
            return 'wpm cannot be below 1'
        else
            return (count_words / wpm.to_f).ceil
        end
    end
    def reading_chunk(wpm, minutes)
        total_words = wpm * minutes
        words = contents.split(' ')
        start_from = @furthest_read
        end_at = @furthest_read + total_words
        word_chunk = words[start_from...end_at]
        if end_at >= count_words
            @furthest_read = 0
        else 
            @furthest_read = end_at
        end
        return word_chunk.join(" ")
    end
end
