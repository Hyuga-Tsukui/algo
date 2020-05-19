# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max_consecutive = 0
    consecutive = 0
    
    nums.each do |i|
      if i == 1
          consecutive += 1
      else
          consecutive = 0
      end
      max_consecutive = consecutive if max_consecutive < consecutive 
    end
    return max_consecutive
end
