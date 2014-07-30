display dialog "Running first script"

set next_script to "next_script.applescript"

tell application "Finder" to set next_script to (container of (path to me) as string) & next_script as alias

set new_script to load_script(next_script)

set script_result to new_script's super_duper_handler()

-- thanks to codemunki.com for this
on load_script(script_to_load)
	set script_to_load to script_to_load as text
	try
		set script_obj to load script alias script_to_load
	on error number -1752
		set script_obj to run script ("script s" & return & (read alias script_to_load as Çclass utf8È) & return & "end script " & return & "return s")
	end try
	
	return script_obj
end load_script