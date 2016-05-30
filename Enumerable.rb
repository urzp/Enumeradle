class Array

	def my_each
	index=0
		while index < self.size
			yield(self[index])
			index+=1
		end
	return self
	end
	
	def my_each_with_index
	index=0
		while index < self.size
			yield([self[index],index])
			index+=1
		end
	return self
	end
	
	
end