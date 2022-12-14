def grammar_check(string)
    if string.start_with?(/[A-Z]/)
        return string.end_with?('.') || string.end_with?('!') || string.end_with?('?')
    else
        return false
    end
end
