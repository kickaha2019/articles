=begin
	smi2srt.rb

	Convert .smi to .srt file
	
	Command line:
		Source .smi file
		Time ratio
		Output .srt file
=end

def encode_int( value, digits)
	value = value.to_i.to_s
	while value.size < digits
		value = '0' + value
	end
	value
end

def encode_time( millis)
	secs, millis = millis.divmod( 1000)
	mins, secs = secs.divmod( 60)
	hours, mins = mins.divmod( 60)
	encode_int(hours,2) + ':' + encode_int(mins,2) + ':' + encode_int(secs,2) + ',' + encode_int(millis,3)
end

def reduce( text)
	while m = /^(.*)<[^<]*>(.*)$/.match( text)
		text = m[1] + m[2]
	end
	while m = /^(.*){[^{]*}(.*)$/.match( text)
		text = m[1] + m[2]
	end
	text.strip
end

File.open( ARGV[2], 'w') do |io|
	from = to = -100
	text = []
	snum = 0
	ratio = ARGV[1].to_f
	
	IO.readlines( ARGV[0]).each do |line|
		line.force_encoding( 'UTF-8') # text_encoding( ARGV[0]))
		line = line.encode( 'US-ASCII',
			                :invalid => :replace, :undef => :replace, :universal_newline => true)

		if m = /<SYNC Start=(\d+)>/.match( line)
			from, to = to, m[1].to_i * ratio
			if (text.size > 0) and (from >= 0)
				snum += 1
				io.puts "#{snum}"
				io.puts encode_time( from) + ' --> ' + encode_time( to)
				io.puts text.join("\n")
				io.puts ''
			end
			text = []
		end
		
		line.split('<br>').each do |el|
			el = reduce( el)
			text << el if (el != '') and (el != '&nbsp;')
		end
		
#		if /<P Class=EN-AUCC>/ =~ line
#			text = line.split( '<br>').collect {|t| reduce(t)}
#			if text[0] == '&nbsp;'
#				text = nil
#			else
#				text = text.join("\n")
#			end
#		end
	end
end

