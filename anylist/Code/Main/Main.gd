extends Control

@onready var LIST: List = $List

func _ready():
	Singleton.LoadData("res://Content/anylist.json")
	LIST.Load("Winco")

func _exit_tree():
	Singleton.SaveData("res://Content/anylist.json")
	# TODO: "user://savegame.save"
