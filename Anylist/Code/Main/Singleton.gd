extends Node

# User Prefs.
const NEED_IT_COLOR = Color.HOT_PINK
const GOT_IT_COLOR = Color.DIM_GRAY
var font_size: int 

# Data.
var items: Array
#var lists: Array


func AppendItem(item: Item):
	items.append(item)
	


func LoadData(path: String):
	var file = File.new()
	file.open(path, File.READ)
	
	var json = JSON.new()
	var error = json.parse(file.get_as_text())
	if error == OK:
		var data_received = json.get_data()
		if data_received is Array:
			items = data_received
		else:
			print("Unexpected data.")
	else:
		print("JSON Parse Error: ", json.get_error_message(), "At line: ", json.get_error_line())
	
	file.close()


func SaveData(path: String):
	var file = File.new()
	var json = JSON.new()
	file.open(path, File.WRITE)
	file.store_line(json.stringify(items, "\t"))
	file.close()


#
#func Save():
#	var file = File.new()
#	#file.open("user://savegame.save", File.WRITE)
#	file.open("res://Content/anylist.save", File.WRITE)
#	var save_nodes = get_tree().get_nodes_in_group("Persist")
#	for node in save_nodes:
#		# Check the node is an instanced scene so it can be instanced again during load.
#		if node.filename.empty():
#			print("persistent node '%s' is not an instanced scene, skipped" % node.name)
#			continue
#
#		# Check the node has a save function.
#		if !node.has_method("save"):
#			print("persistent node '%s' is missing a save() function, skipped" % node.name)
#			continue
#
#		# Call the node's save function.
#		var node_data = node.call("save")
#
#		# Store the save dictionary as a new line in the save file.
#		save_game.store_line(to_json(node_data))
#	save_game.close()
