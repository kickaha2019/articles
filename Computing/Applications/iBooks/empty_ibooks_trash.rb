#
# Script to delete all non-purchased books in collection "Trash"
#

# Get current user
user = (`whoami`).strip

# Find iBooks sqlite3 database
dir, dbs = "/Users/#{user}/Library/Containers/com.apple.iBooksX/Data/Documents/BKLibrary", []
Dir.entries( dir).each do |f|
	dbs << dir + '/' + f if /^BKLibrary-\d*-\d*.sqlite$/ =~ f
end

raise "No iBooks sqlite3 database found" if dbs.size < 1
raise "Multiple iBooks sqlite3 databases found" if dbs.size > 1

# Ask sqlite3 for the ID of the Trash collection
trash_id = nil
IO.popen( "sqlite3 #{dbs[0]} \"select ZCOLLECTIONID from ZBKCOLLECTION where ZTITLE='Trash';\"").readlines.each do |line|
	trash_id = line.strip
end
raise "No Trash collection found" if trash_id.nil?

# Delete the books in the Trash collection
IO.popen( "sqlite3 #{dbs[0]} \"select ZPATH, ZTITLE from ZBKLIBRARYASSET where ZCOLLECTIONID='#{trash_id}';\" and ZPURCHASEDATE is null").readlines.each do |line|
	path, title = line.strip.split('|')
	if path == ''
		raise "No path for [#{title}]"
	end
	if ! File.exists?( path)
		raise "File not found at [#{path}] for [#{title}]"
	end
	if system( "rm -r \"#{path}\"")
		puts "Deleted [#{title}]"
	else
		raise "Error deleting [#{path}] for [#{title}]"
	end
end
