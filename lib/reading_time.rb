def reading_time_calculation(n)
    if n == 0
        return n
    elsif n < 200
        return "Less than one minute"
    else
        return (n / 200).to_i
    end
end
