class PhoneBook
    def initialize
        @pbook = Hash.new
        @listed_names = []
        @listed_numbers = []
    end

    def add(name, number, is_listed)
        if @listed_numbers.member?(number) || @pbook.keys.member?(name) then
            return false
        elsif !number.include?(/^\d{3}-\d{3}-\d{4}$/) then
            return false
        end

        @pbook[name] = number
        if is_listed then
            @listed_names.push(name)
            @listed_numbers.push(number)
        end
    end

    def lookup(name)
        if @listed_names.member?(name) then
            return @pbook[name]
        end
        return nil
    end

    def lookupByNum(number)
        if @listed_numbers.member?(number) then
            i = 0
            while i < @listed_names.length
                if @pbook[@listed_names[i]] == number then
                    return @listed_names[i]
                end
                i += 1
            end
        end
        return nil
    end

    def namesByAc(areacode)
        result = []
        i = 0
        while i < @pbook.length
            str = @pbook.values[i]
            if areacode == str[0..2] then
                result.push(@pbook.keys[i])
            end
            i += 1
        end
        return result
    end
end
