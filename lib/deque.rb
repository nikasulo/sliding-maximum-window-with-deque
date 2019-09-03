require_relative 'node'  

class Deque
  attr_accessor :first

  def initialize
    @first = Node.new(nil)
    @last = @first
  end
  
  def pushFront(number)
    @first = Node.new(number, @first, nil)
    @last = @first if @last and @last.value.nil?
  end
    
  def pushBack(number)
    self.pushFront(number) and return if @last.value == nil 
    new_node = Node.new(number, nil, @last)
    @last.next_node = new_node
    @last = new_node
  end
  
  def popFront
    @first = @first.next_node
    @first = Node.new(nil) if @first == @last
    @last = @first
  end
  
  def popBack
    @last = @last.prev_node and return unless @first == @last
    @first = Node.new(nil)
    @last = @first
  end
  
  def topFront
    @first.value unless @first.nil?
  end
  
  def topBack
    @last.value unless @last.nil?
  end
  
  def is_empty?
    @first.value.nil?
  end

  def print
    res = []
    current = @first
    while current
      res << current.value 
      current = current.next_node
    end
    p res
  end
end

# d = Deque.new
# d.pushFront(10)
# d.pushBack(7)
# d.pushBack(5)
# d.pushBack(1)
# if d.topBack < 3
#   d.popBack
#   d.pushBack(3)
# end
# d.print
# p d.topBack

