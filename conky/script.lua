-- color of elements
default_fg_color = 0xffffff;
default_bg_color = 0xffffff;
 
-- opacity of elements
default_fg_alpha = .9;
default_bg_alpha = .1;
 
-- positions of elements
start_pos = 512;
pos_delta = 50;
end_pos = 1500;
 
-- tmp screen_width
screen_width = 1920;
 
 
settings_table = {
	{
		name='cpu cpu1',
		name_print='CPU1',
		max=100,
		x=screen_width - 300, y=start_pos + 0 * pos_delta,
		rev=0
	},
	{
		name='cpu cpu2',
		name_print='CPU2',
		max=100,
		x=screen_width - 300, y=start_pos + 1 * pos_delta,
		rev=0
	},
	{
		name='cpu cpu3',
		name_print='CPU3',
		max=100,
		x=screen_width - 300, y=start_pos + 2 * pos_delta,
		rev=0
	},
	{
		name='cpu cpu4',
		name_print='CPU4',
		max=100,
		x=screen_width - 300, y=start_pos + 3 * pos_delta,
		rev=0
	},
	{
		name='memperc',
		name_print='MEM',
		max=100,
		x=screen_width - 300, y=start_pos + 4 * pos_delta,
		rev=0
	},
 
	{
		name='hwmon 1 temp 1',
		name_print='CPU',
		suffix='°C',
		max=100,
		x=screen_width - 300, y=start_pos + 5 * pos_delta,
		rev=1
	},
	{
		name='hwmon 3 temp 1',
		name_print='GPU',
		suffix='°C',
		max=100,
		x=screen_width - 300, y=start_pos + 6 * pos_delta,
		rev=1
	},
	{
		name='swapperc',
		name_print='SWAP',
		max=100,
		x=screen_width - 300, y=start_pos + 7 * pos_delta,
		rev=1
	},
	{
		name='fs_used_perc /home/',
		name_print='HOME',
		max=100,
		x=screen_width - 300, y=start_pos + 8 * pos_delta,
		rev=1
	},
	{
		name='fs_used_perc /',
		name_print='ROOT',
		max=100,
		x=screen_width - 300, y=start_pos + 9 * pos_delta,
		rev=1
	},
}
 
require 'cairo'
 
function rgb_to_r_g_b(color,alpha)
	return ((color / 0x10000) % 0x100) / 255., ((color / 0x100) % 0x100) / 255., (color % 0x100) / 255., alpha
end
 
function my_osexe(command)
	local f = io.popen(command);
	local out = ( f:read("*a") );
	out = out:gsub("\n", "")
	return out;
end
 
function draw_ring(cr,t,pt,rev)
	cairo_save(cr)
	local w,h=conky_window.width,conky_window.height
 
	local xc, yc = pt['x'], pt['y']
	local bgc = (pt['bg_color'] == nil) and default_bg_color or pt['bg_color'];
	local bga = (pt['bg_alpha'] == nil) and default_bg_alpha or pt['bg_alpha'];
	local fgc = (pt['fg_color'] == nil) and default_fg_color or pt['fg_color'];
	local fga = (pt['fg_alpha'] == nil) and default_fg_alpha or pt['fg_alpha'];
 
	local suffix = (pt['suffix'] == nil) and "%" or pt['suffix']
 
	local width = 200;
	local height = 19;
 
	draw_shapes(cr, 1, height, width, xc, yc, bgc, bga);
	draw_shapes(cr, t, height, width, xc, yc, fgc, fga);
 
	draw_text(cr, xc, yc + height + 14, pt['name_print'] .. ": " .. t * 100 .. suffix, 12, 0, bgc, 1);
end
 
function draw_shapes(cr, t, height, width, xc, yc, fgc, fga)
 
	cairo_move_to (cr, xc + 20, yc);
	cairo_rel_line_to (cr, width * t, 0);
	cairo_rel_line_to (cr, -20, height);
	cairo_rel_line_to (cr, -width * t, 0);
	cairo_close_path (cr);
 
	cairo_set_line_width (cr, 0);
	cairo_set_source_rgba(cr, rgb_to_r_g_b(fgc, fga))
	cairo_fill_preserve(cr)
	cairo_set_source_rgba(cr, 1, 1, 1, 1)
	cairo_set_line_width(cr, 1)
	cairo_stroke(cr)
 
end
 
-- align: 0 = default, 1 = centered, 2 = right
function draw_text(cr, xc, yc, text, font_size, align, color, alpha)
	cairo_save(cr)
	local te=cairo_text_extents_t:create()
	cairo_set_font_size (cr, font_size)
	cairo_text_extents(cr, text, te)
	if align == 1 then
		cairo_move_to (cr, xc - (te.width/2 + te.x_bearing), yc - (te.height/2 + te.y_bearing));
	elseif align == 2 then
		cairo_move_to (cr, xc - (te.width + te.x_bearing), yc);
	else
		cairo_move_to (cr, xc, yc);
	end
	cairo_set_source_rgba (cr, rgb_to_r_g_b(color, alpha));
	cairo_show_text (cr, text);
	cairo_restore(cr)
end
 
function conky_script()
	local function setup_rings(cr,pt)
		local str = pt['name']
		local value = 0
 
		str = conky_parse(string.format("${%s}", str))
 
		value = tonumber(str)
		if value == nil then return end
		pct = value / pt['max']
 
		draw_ring(cr, pct, pt, pt['rev'])
	end
 
	if conky_window == nil then return end
	local cs = cairo_xlib_surface_create(
		conky_window.display,
		conky_window.drawable,
		conky_window.visual,
		conky_window.width,
		conky_window.height)
 
	local updates = conky_parse('${updates}')
	update_num = tonumber(updates)
 
	local cr = cairo_create(cs)
	for i in pairs(settings_table) do
		setup_rings(cr,settings_table[i])
	end
	cairo_surface_destroy(cs);
	cairo_destroy(cr);
end
