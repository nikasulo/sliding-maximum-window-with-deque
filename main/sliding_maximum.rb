require_relative '../lib/deque'

# def sliding_maximum(k, array)
#     res = []
#     for i in 0..array.length - k do
#         max = array[i]
#         for j in i...i+k do 
#             max = array[j] > max ? array[j] : max
#         end 
#         res << max
#     end   
#     res
# end
def add_max_to_result(result, max)
    result << max
end

def max_in_window?(out_of_window, max, deque)
    max != out_of_window
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
        
        out_of_window = array[i - k]
        set_max(deque,array[i]) if deque.is_empty?

        max = get_max(deque)
        
        if max < array[i] 
            remove_max(deque)
            set_max(deque, array[i])
        end
        
        remove_max(deque) if !max_in_window?(out_of_window, max, deque)
        
        if deque.topBack > array[i] 
            deque.pushBack(array[i])
        else
            deque.popBack
            deque.pushBack(array[i])
        end
        
        
        max = get_max(deque)
        
        if i >= k - 1
            add_max_to_result(result, max)
        end
        
    end
    
    result
end

p sliding_maximum(4, [9, 3, 5, 1, 7, 10])
p sliding_maximum(3, [1, 3, 5, 7, 9, 2])