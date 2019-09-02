require_relative '../lib/deque'

def add_max_to_result(result, max)
    result << max
end

def max_in_window?(index, array, max, deque)
    max != array[index]
end

def set_max(deque,max)
    deque.pushFront(max)
end

def remove_max(deque)
    deque.popFront
end

def get_max(deque)
    deque.topFront
end

def sliding_maximum(k,array)
    deque = Deque.new
    result = []
    for i in (0...array.length) do

        deque.pushBack(array[i]) if deque.is_empty?
        
        
        max = get_max(deque)
        
        
        # p result
        # puts "Iter: #{i}, in the back we have #{deque.topBack}"
        # deque.print
        
        if max < array[i]
            remove_max(deque)
            set_max(deque, array[i])
        end
        
        
            remove_max(deque) unless max_in_window?((i - k), array, max, deque)
        

        if deque.topBack and deque.topBack > array[i]
            deque.pushBack(array[i])
        else deque.topBack
            deque.popBack
            deque.pushBack(array[i])
        end
        
        
        
        max = get_max(deque)
        
        if i >= k - 1
            add_max_to_result(result, max)
        end
        
    end
    # deque.print
    result
end

p sliding_maximum(4, [9, 3, 5, 1, 7, 10])
p sliding_maximum(3, [1, 3, 5, 7, 9, 2])
p sliding_maximum(3, [8, 0, 4, 2, 0, 6, 4, 8, 5, 7])
p sliding_maximum(4, [14, 1, 9, 1, 1, 10])
p sliding_maximum(3, [10, 27, 8, 1, 3, 9])