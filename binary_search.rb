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

def binary_search_recursion(n:, array:, index: 0)
    
    guess = array[index]
    return index if guess.eql? n
    index = (index + array.size - 1) / 2
    guess = array[index]
    binary_search_recursion(n: n, array: array, index: index - 1) if guess > n
    binary_search_recursion(n: n, array: array, index: index + 1) if guess < n
    
end