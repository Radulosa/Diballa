function SubImageWdh(){
	
	var uvs = sprite_get_uvs(sprite_index, image_index);
var tex = sprite_get_texture(sprite_index, image_index);
var tw = texture_get_texel_width(tex);
var th = texture_get_texel_height(tex);

var lft = uvs[0];
var top = uvs[1];
var rgt = uvs[2];
var bot = uvs[3];

var wdt = (rgt - lft) / tw;
var hgt = (bot - top) / th;

}