class Stack
  attr_reader :data_store, :back
  def initialize
    @data_store= []
    @back = 0
  end
  def push value
    @data_store[@data_store.length]=value
    @back = value
    self
  end

  def pop
    if @data_store.length==0
      return nil
    end
    @data_store.delete_at(@data_store.length-1)
    @back= @data_store[@data_store.length-1]
  end
end
