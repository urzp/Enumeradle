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
	
	def my_select
		for index in self
			result_array=[]
			if yield(self[index])
				result_array << self[index]
			end
		end
	return self
	end	
	
	def my_all?
	index=0	
		loop do
			if index >= self.size
				return true
				break 
			end			
			result=yield(self[index])
			#puts result for test
			if !result
				return false
				break
			end
			index+=1
		end
	return self
	end	
	
	def my_any?
	index=0	
		loop do
			if index >= self.size
				return false
				break 
			end			
			result=yield(self[index])
			#puts result for test
			if result
				return true
				break
			end
			index+=1
		end
	return self
	end	
	
end