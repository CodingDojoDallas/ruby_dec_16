class Queue
  attr_reader :data_store, :back, :max, :min
  def initialize
    @data_store= []
    @back = 0
    @max =0
    @min=0
  end
  def enqueue value
    @data_store[@data_store.length]=value
    @back = value
    if value > @max
      @max = value
    elsif @data_store.length==1
      @min = value
    elsif value < @min
      @min = value
    end
    self
  end

  def dequeue
    if @data_store.length==0
      return nil
    end
    @data_store.delete_at(@data_store.length-1)
    @back= @data_store[@data_store.length-1]
  end
end
