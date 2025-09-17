def fib(n)
    index = n
    result = []

    if n = 1 then
        result = [0]
    elsif n > 1 then
        result = [0, 1]
        index = 2
    end

    while index < n
        result[index] = result[index - 1] + result[index - 2]
        index += 1
    end

    return result
end

def isPalindrome(n)
    str = n.to_s
    forward_counter = 0
    backward_counter = -1

    while str.length > backward_counter.abs + forward_counter
        if str[forward_counter] != str[backward_counter] then
            return false
        end
        forward_counter += 1
        backward_counter -= 1
    end

    return true
end

def nthmax(n, a) 
    counter = 0
    temp_array = a.clone
    
    while counter < n
        temp_array.delete(temp_array.max)
        counter += 1
    end

    return temp_array.max
end

def freq(s) 
    if s == "" then
        return s
    end
    char_array = s.chars
    char_hash = Hash.new(0)
    char_array.each {|v| char_hash[v] += 1}
    freq_array = char_hash.values 
    max_freq = freq_array.max
    max_freq_index = freq_array.find_index(max_freq)
    return char_hash.keys[max_freq_index]
end

def zipHash(arr1, arr2)
    raise Exception, "Not Implemented"
end

def hashToArray(hash)
    raise Exception, "Not Implemented"
end
