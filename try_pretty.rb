	array = [['Number', 'Name'], [1, 'Foo'], [2, 'Bar'], [3, 'Baz']]

	def pretty_table(array)

		new_array = array.collect do|elem| 
			elem.collect! {|el| el.to_s}
			elem.max_by {|el| el.length}
		end
		m = new_array.max_by {|elem| elem.length}


		longest_sub_array = array.max_by {|elem| elem.length}
		w = longest_sub_array.to_s.length - 2


		string = ""
		array.each do |sub_array|
			string << " " + "-" * w
			string << "\n"
			sub_array.each do |elem|
				string << " |" + elem.ljust(m.size) 
			end
			string << "|"
			string << "\n"
			
		end
		string << " " + "-" * w
		string << "\n"
		
	end
	print pretty_table(array)
