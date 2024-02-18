# frozen_string_literal: true

def bubble_sort(arr)
  arr.each_with_index do |_, index|
    pointer_index = 0

    until pointer_index == arr.length - 1 - index
      if arr[pointer_index + 1] < arr[pointer_index]
        arr[pointer_index], arr[pointer_index + 1] = arr[pointer_index + 1], arr[pointer_index]
      end

      pointer_index += 1
    end
  end
end

arr = [4, 3, 78, 2, 0, 2]

p arr

bubble_sort(arr)

p arr
