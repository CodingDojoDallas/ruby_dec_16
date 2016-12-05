class SLLNode
  attr_reader :val
  attr_accessor :next
  def initialize value
    @val = value
    @next = nil
  end
end

class SLL
  attr_accessor :head, :tail
  attr_reader :all_nodes, :all_values, :min, :max
  def initialize
    @head= nil
    @tail=nil
    @all_nodes=[]
    @all_values=[]
  end

  def update
    @all_nodes = []
    @all_values = []
    current = self.head
    while current do
      @all_nodes.push(current)
      @all_values.push(current.val)
      current=current.next
    end
  end

  def insert val, val_after
    count=1
    current = self.head
    while current do
      if current.val==val_after
        temp=current.next
        current.next = SLLNode.new(val)
        current.next.next = temp
        if temp = nil
          @tail=current.next
        end
        @all_nodes.insert(count, current.next)
        @all_values.insert(count, current.next.val)
        if val>@max
          @max = val
        elsif val<@min
          @min = val
        end
        break
      end
      current=current.next
      count+=1
    end
    puts "Value you are trying to insert after cannot be found."
    nil
  end

  def find node
    @all_nodes.detect{|i| i==node}
  end

  def display_nodes
    @all_nodes
  end

  def how_many
    @all_nodes.length
  end

  def display_values
    @all_values
  end

  def remove_all
    @head=nil
    @tail=nil
    @all_values=[]
    @all_nodes=[]
  end

  def add val
    if @head==nil
      @head = SLLNode.new(val)
      @tail = @head
    else
      @tail.next = SLLNode.new(val)
      @tail = @tail.next
    end

    if !(@max)
      @max = val
      @min = val
    else
      if val>@max
        @max = val
      elsif val<@min
        @min = val
      end
    end

    @all_nodes.push(@tail)
    @all_values.push(val)
    self
  end

  def remove val
    puts "STARTING REMOVE FUNCT------"
    prev = self.head
    current = self.head
    while current do
      puts "current val: " + current.val.to_s
      if current.val == val
        puts "FOUND THE VAL! TRYING TO DELETE IT!"
        if prev == self.head
          self.head = current.next
        else
          prev.next = current.next
        end
        current.next = nil
        index = @all_values.index(val)
        puts "INDEX---" + index.to_s
        @all_values.delete_at(index)
        print @all_values
        @all_nodes.delete_at(index)
        print @all_nodes
        return
      end
      prev = current
      current = current.next
    end
    nil
  end
end
