/// scrBazierMove(t[frame],len[block],pr1,pr2,dir[0-360])

t = argument0;
len = argument1;
pr1 = argument2;
pr2 = argument3;
dir = argument4;

var bazier_value;
bazier_value = (3 * t * (1 - t) * (1 - t) * pr1) + (3 * (t * t) * (1 - t) * pr2) + (t * t * t);

dx = lengthdir_x(len * 32 * bazier_value, dir);
dy = lengthdir_y(len * 32 * bazier_value, dir);
x = xstart + dx;
y = ystart + dy;
