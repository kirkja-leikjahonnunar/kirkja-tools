extends Control
class_name List

const ITEM_PS: PackedScene = preload("res://Item/Item.tscn")

@onready var TITLE_UI := $VBoxContainer/Title
@onready var ITEMS := $VBoxContainer/ScrollContainer/Items

var title: String
var new_item: Item


func Load(new_title: String):
	title = new_title
	TITLE_UI.text = title
	for data in Singleton.items:
		AddItemUI(data)


func AddItemUI(data: Dictionary):
	var item: Item = ITEM_PS.instantiate()
	item.title = data.title
	item.got_it = data.got_it
	ITEMS.add_child(item)
	item.SetColor() # Keep on last line.


func NewItem():
	new_item = ITEM_PS.instantiate()
	ITEMS.add_child(new_item)
	
	new_item.SetColor()
	new_item.EDIT_TITLE_UI.text_submitted.connect(TextSubmitted)


func TextSubmitted(new_text):
	if new_item != null:
		Singleton.items.append(new_item)
	


func Refresh(text: String):
	for child in ITEMS.get_children():
		child.queue_free()
		Load(title)


#------------------------------------------------------------------------------
# Signals.
#------------------------------------------------------------------------------

func _on_title_pressed():
	# TODO: Enter edit mode.
	pass # Replace with function body.

func _on_new_item_pressed():
	var item: Item = NewItem()
	item.EditTitle()

func _on_existing_item_pressed():
	pass # Replace with function body.
