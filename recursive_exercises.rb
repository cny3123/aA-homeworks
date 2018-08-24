require "byebug"
def range(start, last)
  # debugger
  return [] if last < start
  return [start] if start + 1 == last
  [start] + range(start + 1, last)
  # (last - 1)
end

def sum_recursive(arr)
  # return nil if arr.empty?
  return arr[0] if arr.length <= 1
  arr[0] + sum_recursive(arr[1..-1])
end

def sum_iterative(arr)
  result = 0
  arr.each { |n| result += n}
  result
end

def exponent1(b, n)
  return 1 if n == 0
  b * exponent1(b, n-1)
end

def exponent2(b, n)
  return 1 if n == 0
  if n.even?
    exp(b, n / 2) ** 2
  else
    b * (exp(b, (n - 1) / 2) ** 2)
  end
end

[1, [2, [2]]]

def deep_dup(arr)
  # new_arr = []
  # arr.each do |el|
  #   # debugger
  #   # p el
  #   if el.is_a? Integer
  #     new_arr << el
  #   else
  #     new_arr << deep_dup(el)
  #   end
  # end
  # new_arr
    arr.map { |el| el.is_a?(Integer) ? el : deep_dup(el)}
end

def fibs_rec(n) #[0, 1, 1, 2]
    if n <= 2
      [0, 1].take(n)
    else
      fibs = fibs_rec(n - 1) #fibs_rec(4) => [0, 1]
      fibs << fibs[-2] + fibs[-1] #[0,1] << 1 + 0 = 1
    end
end


def fibonacci_it(n)
  base = [1, 1]
  count = 2
  while count < n
    base << base[-2] + base[-1]
    count += 1
  end
  base
end

def binary_search(arr, target)
  # if arr.length.even?
  #   ((arr[arr.length / 2] + arr[(arr.length / 2) - 1]) / 2) == n
  # else
  #   arr[arr.length / 2] == n
  return nil if arr.length == 0
  if arr.length == 1
    if target == arr[0]
      return 0
    else
      return nil
    end
  end

  mid_index = arr.length / 2
  # return arr.length / 2 if arr[arr.length / 2] == target
  if target >= arr[mid_index]
    result = binary_search(arr[mid_index..-1], target)
    return nil if result.nil?
    mid_index + result
  else
    binary_search(arr[0...mid_index], target)
  end

end

[2, 1, 4, 3]
def merge_sort(arr)
  return arr[0] if arr.length <= 1
  mid_pt = arr.length / 2
  lower = arr[0...mid_pt] #2
  higher = arr[mid_pt..-1] #1
  if arr.length > 1
    merge_sort(arr)
  else
    merge(lower, higher)
  end

end

def merge(num1, num2) #2, 1
  arr = num1 + num2
  new_arr = []
  if  arr[0] > arr[1]
    # arr[0], arr[1] = arr[1], arr[0] #2, 1 = 1, 2
    new_arr << arr[1] << arr[0]
  end

  new_arr
end

def subsets(arr)
  return [] if arr.empty?

  # subsets_arr = subsets(arr[0...-1])
  # subsets_arr << arr[-1]
end
