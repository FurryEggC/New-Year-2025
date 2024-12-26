/// scrDrawAttachedText(text)

with(instance_create(0,0,objDrawText))
{
    signText = argument0;
    target_alpha = 1;
    draw_font = fEDAnimation28;
    draw_x = 400;
    draw_y = 50;
    alarm[0] = -1;
}
with(instance_create(400,324,objDrawSprite))
{
    sprite_index = other.pic_array[other.index];
    alarm[0] = -1;
    target_alpha = 1;
}
index++;
