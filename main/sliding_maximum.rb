require_relative '../lib/deque'

def sliding_maximum(k,array)
    deque = Deque.new

    for i in (0...array.length) do
        deque.pushBack(array[i]) if deque.is_empty?
    end

    
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])