extends Node

func _ready():
  randomize()
  
  var threads = 4
  
  var i = 0
  while i < threads:
    var bang = Bang.new()
    bang.set_translation(Vector3(i, 0, 0))
    add_child(bang)
    
    i += 1
