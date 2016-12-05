class Stack
	private
	attr_writer :data_store, :back

	def initialize
		@data_store = [0]
		@back = 0
	end
	public
	attr_reader :data_store, :back
	def push(val)
		@data_store[@data_store.length] = val
		@back = val
	end
	def pop
		len = @data_store.length
		if len == 1
			nil
		else
			@data_store.delete_at(len-1)
			@back = @data_store[len-2]
		end
	end
	# these 2 method versions will remain to show how badly I did it the 1st time
	# def push(val)
	# 	len = @data_store.length
	# 	for i in len.downto(1)
	# 		@data_store[i] = @data_store[i-1]
	# 	end
	# 	@data_store[0] = val
	# 	self
	# end

	# def pop
	# 	len = @data_store.length
	# 	if len == 1
	# 		nil
	# 	else
	# 		for i in 0...len
	# 			@data_store[i] = @data_store[i+1]
	# 		end
	# 		@data_store.delete_at(len-1)
	# 	end
	# end
end
