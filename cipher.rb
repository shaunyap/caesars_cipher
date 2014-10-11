def caesars_cipher(text, key = 0)
	text.each_char do |letter|
		if letter =~ /[A-Za-z]/
			newval = letter.ord + key
				if newval >= 65 && newval <= 90 || newval >= 123 && newval <= 147
					newval = newval -26				
				end
			print newval.chr
		else
			print letter
		end
	end
end


puts "What would you like to encrypt?"
text = gets.chomp

puts "What is your cipher key"
key = gets.chomp.to_i%26

caesars_cipher(text, key)