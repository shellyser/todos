class FakeHashWrapper

	attr_accessor :fakehash

	def initialize
		@fakehash = {}
	end

	def []=(key, value)
		@fakehash[key] = value
	end

	def [](key)
		if @fakehash[key]
			@fakehash[key]
		elsif @fakehash[key.to_sym]
			@fakehash[key.to_sym]
		elsif @fakehash[key.to_s]
			@fakehash[key.to_s]
		end
	end

	def first_letter(letter)
		result = []
		@fakehash.each do |key, value|
			if key[0].downcase == letter
				result << value
			end
		end
	 	result
	end

	def keys
		@fakehash.keys.sort.reverse
	end
end