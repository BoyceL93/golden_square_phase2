def make_snippet(string)
    words = string.split(' ')
    if words.length <= 5
        return string
    else
        return string.split[0..4].join(' ') + "..."
    end
end
