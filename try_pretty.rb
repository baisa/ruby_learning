	array = [['Number', 'Name'], [1, 'Foo'], [2, 'Bar'], [3, 'Baz']]

	def pretty_table(array)

		new_array = array.collect do|elem| 
			elem.collect! {|el| el.to_s}
			elem.max_by {|el| el.length}
		end
		m = new_array.max_by {|elem| elem.length}
		z = array[0].size
		w = m.size * z + z + 2
		


		string = ""
		array.each do |sub_array|
			string << " "
			string << ("+" + "-" * m.size + "-") * z + "+"
			string << "\n"
			sub_array.each do |elem|
				string << " |" + elem.ljust(m.size) 
			end
			string << " |"
			string << "\n"
			
		end
		string << " "
		string << ("+" + "-" * m.size + "-") * z + "+"
		string << "\n"
		
	end

	print pretty_table(array)
	#array = [['Number', 'Name', 'ID'], [1, 'Foo', 'Zoo'], [2, 'Bar', 'Yoo'], [3, 'Baz', 'Bahhhhhhhhhhhhh']]
	#print pretty_table(array)
	#array = [['Number', 'Name', 'ID', 'Urg'], [1, 'Foo', 'Zoo', 'Gooo'], [2, 'Bar', 'Yoo', 7], [1, 3, 'Baz', 'Bahhhhhhhhhhhhh']]
	#print pretty_table(array)
