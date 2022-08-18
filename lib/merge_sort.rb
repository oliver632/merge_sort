array = [1,5,7,8,5,8,1,3,8,9,3,5,7,8,2,9,10]

def merge_sort(array)
  # base case
  return array if array.length == 1

  # recursion case
  # divides the array into two and uses recursion.
  middle = (array.length / 2).round
  a = merge_sort(array[0...middle])
  b = merge_sort(array[middle..])
  output_array = []
  # keeps sorting into output_array until the halves are each empty.
  until a.length.zero? && b.length.zero?
    if a.length.zero?
      output_array << b.shift
    elsif b.length.zero?
      output_array << a.shift
    elsif a[0] < b[0]
      output_array << a.shift
    elsif b[0] < a[0]
      output_array << b.shift
    elsif b[0] == a[0]
      output_array << b.shift
    else
      puts "error in merge"
    end
  end
  output_array
end

p "Array before sorting: #{array}"
p "Array after sorting: #{merge_sort(array)}"