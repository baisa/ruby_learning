
  print "Write a sentence: "
  array_of_sentences = []

  while sentence = gets.chomp
    
    break if (sentence == "END")
    print "Write a sentence: "
    array_of_sentences << sentence
    
  end

n = 1
m = array_of_sentences.max_by { |x| x.length }
array_of_sentences.each do |sentence| 
  puts "#{n}" + ". " + "#{sentence}".ljust(m.size) + " | " + "#{sentence.size}"
  n = n + 1
end





