shader_type spatial;
render_mode unshaded, fog_disabled;

global uniform vec2 resolution;
global uniform float color_depth;

uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;

void vertex() {
	POSITION = vec4(VERTEX.xy, 1.0, 1.0);
}

void fragment() {
	vec2 uv = floor(SCREEN_UV * resolution) / resolution; 
	ALBEDO = texture(screen_texture, uv).rgb;
}
