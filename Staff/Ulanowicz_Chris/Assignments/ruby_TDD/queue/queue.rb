class Queue
	attr_accessor :data_store, :max, :min
	attr_reader :back

	def initialize
		@data_store = []
		@max = 0
		@min = 0
		@back = 0
	end

	def enqueue(val)
		len = @data_store.length
		@data_store[len] = val
		@max = val if val > @max || len == 0
		@min = val if val < @min || len == 0
		@data_store
	end

	def dequeue
		len = @data_store.length
		if len == 0
			nil
		else
			for i in 0...len
				@data_store[i] = @data_store[i+1]
			end
			@data_store.delete_at(len-1)
			@data_store
		end
	end
end
