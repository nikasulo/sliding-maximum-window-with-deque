require_relative 'node'  

class Deque
  attr_accessor :first

  def initialize
    @first = Node.new(nil)
    @last = @first
  end
  
  def pushFront(number)
    @first = Node.new(number, @first, nil)
    @last = @first if @last.nil?
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
    @first.value if !@first.nil?
  end
  
  def topBack
    @last.value if !@last.nil?
  end
  
  def is_empty?
    @first.nil? || @last.nil?
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

d = Deque.new
d.pushBack(2)
d.pushBack(12)
d.pushBack(24)
d.pushFront(6)
d.pushBack(7)
d.popBack
d.popBack
d.popFront
d.popBack
d.popFront
d.pushFront(11)
d.pushBack(7)
d.popBack
d.popBack
# d.popBack
p d.topFront
p d.topBack

