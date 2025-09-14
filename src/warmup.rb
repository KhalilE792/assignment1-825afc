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
    raise Exception, "Not Implemented"
end

def freq(s)
    raise Exception, "Not Implemented"
end

def zipHash(arr1, arr2)
    raise Exception, "Not Implemented"
end

def hashToArray(hash)
    raise Exception, "Not Implemented"
end
