class Array
  # Returns the natural order of the array
  #   The problem is that the sort method from the Array class cannot "see" the embedded numbers.
  #     %w( foobar a2 a30 a3 a20 a13bb20 ).sort # => %w( a13bb20 a2 a20 a3 a30 foobar)
  #   with natural_sort
  #     %w( foobar a2 a30 a3 a20 a13bb20 ).natural_sort # => %w( a2 a3 a13bb20 a20 a30 foobar )
  #   with block
  #     obj = Obj.find(:all) 
  #     obj.natural_sort { |o| o.name }
  #
  # - author => Ozéias Sant'ana - railsbox.org - oz.santana@gmail.com
  def natural_sort(&block)
    reg_number = /\d+/

    self.sort do |str1, str2|

      # Get string in block
      if block_given?
        str1 = yield str1
        str2 = yield str2
      end
      
      min = lambda { |a,b| a < b ? a : b }

    	# Split the strings into digits and non-digits
    	strArrays = [str1,str2].inject(Array.new) do |arr, str|
    		arr << str.tr(" \t\r\n", '').split(/(\d+)/)
    	end

    	# Loop through all the digit parts and convert to integers if neither of them begin with a zero
    	1.step(min.call(strArrays[0].size, strArrays[1].size)-1, 2) do |idx|
    		if (strArrays[0][idx] !~ /^0/) and (strArrays[1][idx] !~ /^0/)
    			strArrays.each { |arr| arr[idx] = arr[idx].to_i }
    		end
    	end

    	strArrays[0] <=> strArrays[1]      
    end
  end
end