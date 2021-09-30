//Jose

#include "fonts.h"
void show_jennipher_credits(int x, int y)
{
    Rect r;
    r.bot = y;
    r.left = x;
    r.center = 1;
    ggprint8b(&r, 16, 0X00ff0000, "Jennipher");
}