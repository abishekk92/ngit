file_system= require 'fs'
require './file.js'
require './commit.js'
args=process.argv.slice 2
command=args[0]
file_name=args[1]
options=
	['add'
	'rm'
	'commit'
	'reset']

if command in options 
	switch command 
		when 'add' then new File(file)
		
		when 'rm'  then File.remove  file

		when 'commit' 
			file_object = File.get_file_object file 
			commit = new Commit file_object
		when 'reset'
			target_commit = args[1]
			File.reset commit 





