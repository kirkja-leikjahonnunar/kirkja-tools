extends Button
class_name Item

@onready var TITLE_UI := $Title
@onready var EDIT_TITLE_UI := $EditTitle
@onready var TIMER := $Timer

var title: String = "" # What is it called?
var got_it: bool = false # Got it or need it.
var count: float = 0.0 # Allow 1.56 ml.
var units: String = "" # mg, ml, cup, teaspoon.
var importance: int = 0 # 0 to 10.


func Data():
	return {"title": title, "got_it": got_it, "count": count, "units": units, "importance": importance}


func _ready():
	TITLE_UI.text = title
	TITLE_UI.show()
	EDIT_TITLE_UI.hide()


func ToggleButton():
	got_it = !got_it
	SetColor()


func SetColor():
	if got_it:
		modulate = Singleton.GOT_IT_COLOR
	else:
		modulate = Singleton.NEED_IT_COLOR


func NewEdit():
	EditTitle()
	EDIT_TITLE_UI.text = ""


func EditTitle():
	modulate = Color.WHITE
	TITLE_UI.hide()
	EDIT_TITLE_UI.show()
	EDIT_TITLE_UI.text = title
	EDIT_TITLE_UI.grab_focus()


func SetTitle(new_title: String):
	title = EDIT_TITLE_UI.text
	EDIT_TITLE_UI.hide()
	TITLE_UI.text = title
	TITLE_UI.show()
	SetColor()


#------------------------------------------------------------------------------
# Signals.
#------------------------------------------------------------------------------

func _on_item_pressed():
	ToggleButton()

func _on_item_button_down():
	TIMER.start(0.5)

func _on_item_button_up():
	TIMER.stop()

func _on_timer_timeout():
	EditTitle()

func _on_line_edit_text_submitted(new_text):
	SetTitle(new_text)
