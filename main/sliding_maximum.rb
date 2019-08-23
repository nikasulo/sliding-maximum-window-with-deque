require_relative '../lib/deque'

def sliding_maximum(k,array)
    deque = Deque.new
    res = []
    for i in (0...array.length) do

        
        deque.pushBack(array[i]) if deque.is_empty?

        if deque.topFront == array[i - (k - 1)]
            deque.popFront
        end

        
end

sliding_maximum(4, [1, 3, 5, 7, 9, 2])