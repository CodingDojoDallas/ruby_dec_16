class SLLNode
	private
	attr_writer :value
	def initialize(val)
		@value = val
		@next = nil
	end
	public
	attr_reader :value
	attr_accessor :next
end

class SLL
	private
	attr_writer :head
	def initialize
		@head = nil
	end
	public
	attr_reader :head
	def insert(val, previousVal)
		newNode = SLLNode.new(val)
		if self.head == nil
			self.head = newNode
		else
			current = self.head
			while current.next
				if current.value == previousVal
					break
				else
					current = current.next
				end
			end
			temp = current.next
			current.next = newNode
			newNode.next = temp
		end
	end
	def add(val)
		newNode = SLLNode.new(val)
		if self.head == nil
			self.head = newNode
		else
			current = self.head
			while current.next
				current = current.next
			end
			current.next = newNode
		end
	end
	# def contains(val)
	# 	if self.head == nil
	# 		nil
	# 	else
	# 		current = self.head
	# 		while current
	# 			if current.value == val
	# end
	def display_values()
		arr = []
		current = self.head
		while current
			arr.push(current.value)
			current=current.next
		end
		arr
	end
	def display_nodes()
		arr = []
		current = self.head
		while current
			arr.push(current)
			current=current.next
		end
		arr
	end
	def find(val)
		current = self.head
		while current
			if current.value == val
				return current
			else
				current = current.next
			end
		end
		nil
	end
	def remove(val)
		if self.head == nil
			return nil
		else 
			current = self.head
			if current.value == val
				self.head = current.next
				return current
			end
			while current.next
				if current.next.value == val
					removed_node = current.next
					current.next = current.next.next
					removed_node.next = nil
					return removed_node
				else
					current = current.next
				end
			end
			return nil
		end
	end
	def remove_all()
		self.head = nil
		self
	end
	def max()
		if self.head == nil
			return nil
		end
		current = self.head
		max = current.value
		while current
			if current.value > max
				max = current.value
			end
			current = current.next
		end
		max
	end
	def min()
		if self.head == nil
			return nil
		end
		current = self.head
		min = current.value
		while current
			if current.value < min
				min = current.value
			end
			current = current.next
		end
		min
	end
	def how_many()
		count = 0
		current = self.head
		while current
			count+=1
			current=current.next
		end
		count
	end
end