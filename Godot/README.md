# Godot Snippets
## GDScript 4 Cheatsheet

### Viewport Size
```gdscript
func _ready():
  var viewport_center = Vector2(get_vieport().size.x, get_vieport().size.y)
```

### Reparenting
```gdscript
func _ready():
  call_deferred("Reparent", new_parent)

func Reparent(node):
  var gt = global_transform
  get_parent().remove_child(self)
  node.add_child(self)
  global_transform = gt
```
