require_relative '../lib/deque'

def sliding_maximum(k,array)
    deque = Deque.new
    res = []
    for i in (0...array.length) do
        
        
        deque.pushFront(array[i]) if deque.is_empty?
        
        
        
        if deque.topFront < array[i] 
            deque.popFront
            deque.pushFront(array[i])
        end
        
        deque.popFront if deque.topFront == array[i - k]
        
        if deque.topBack > array[i] 
            deque.pushBack(array[i])
        else
            deque.popBack
            deque.pushBack(array[i])
        end
        
        
        
        if i >= k - 1
            res << deque.topFront
        end
        
    end
    
    p res
end

sliding_maximum(4, [9, 3, 5, 1, 7, 10])
sliding_maximum(3, [1, 3, 5, 7, 9, 2])