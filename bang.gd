class_name Bang

extends Spatial

const SHADER = preload('res://shader.shader')

var _mesh_instance = MeshInstance.new()
var _thread = Thread.new()

func _init():
  _mesh_instance.set_mesh(preload('res://test.obj'))
  add_child(_mesh_instance)
  
  _thread.start(self, "_do_bang")

func _do_bang(_userdata):
  while true:
    _bang()

func _bang():
  var texture_array = TextureArray.new()
  texture_array.create(64, 64, 1, Image.FORMAT_RGBA8, 6)
  texture_array.set_layer_data(preload('res://icon.png'), 0)
  
  var material = ShaderMaterial.new()
  material.set_shader(SHADER)
  material.set_shader_param('texture_array', texture_array)
