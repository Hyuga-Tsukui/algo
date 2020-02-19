def binary_search(n:, array:)
    low = 0
    high = array.size - 1
    
    while low <= high do
        mid = (low + high) / 2
        guess = array[mid]
        
        if guess.eql? n 
            return mid
        elsif n > guess
            low = mid + 1
        else
            high = mid - 1
        end
    end
end

def binary_search_recursion(n:, array:, low: 0, high: array.size - 1)
    
    return nil if array[high] < n or array[low] > n
    mid = (low + high) / 2
    guess = array[mid]
    puts "low = #{low} high = #{high} mid = #{mid} guess = #{guess}"
    return mid if guess.eql? n
    return binary_search_recursion(n: n, array: array, high: mid - 1) if guess > n
    return binary_search_recursion(n: n, array: array, low: mid + 1, high: high) if guess < n
    
end