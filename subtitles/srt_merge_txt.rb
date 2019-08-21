=begin
	srt_merge_txt.rb

	Merge text in .txt files into srt file
	
	Command line:
		Directory
		.srt file
=end

require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://translate.google.co.uk/?hl=en&eotf=0"

element = driver.find_element(:id, 'gt-sl')
driver.execute_script( "arguments[0].value = 'ja'", element)

element = driver.find_element(:id, 'gt-tl')
driver.execute_script( "arguments[0].value = 'en'", element)

lines = IO.readlines( ARGV[0] + '/' + ARGV[1]).collect {|line| line.chomp}

lines.each_index do |i|
	line = lines[i]
	if m = /^(\d+)\.png/.match( line)
#		element = driver.find_element(:id, 'result_box')
#		driver.execute_script( "arguments[0].innerHTML = ''", element)

		element = driver.find_element(:id, 'source')
		element.send_keys IO.read( ARGV[0] + '/' + m[1] + '.txt')
		
		element = driver.find_element(:id, 'gt-submit')
		element.click
		
		element, text = driver.find_element(:id, 'result_box'), ''
		(0..9).each do
			sleep 3
			t = driver.execute_script( "return arguments[0].innerHTML", element)
			#puts "DEBUG100: [#{t}]"
			if not t.nil?
				while m = /^(.*)<[^>]*>(.*)$/.match( t)
					t = m[1] + m[2]
				end
				text = t
				break
			end
		end
		
		raise "Unable to translate" if text == ''
		lines[i] = text

		File.open( ARGV[0] + '/' + ARGV[1], 'w') do |io|
			lines.each {|l| io.puts l}
		end
		
		#raise "Development"
		element = driver.find_element(:id, 'gt-clear')
		element.click
	end
end

