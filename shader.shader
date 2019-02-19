shader_type spatial;

uniform sampler2DArray texture_array;

void fragment() {
  ALBEDO = texture(texture_array, vec3(UV, 0.0)).rgb;
}