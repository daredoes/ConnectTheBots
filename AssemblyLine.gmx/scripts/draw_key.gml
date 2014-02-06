firstX=argument0;
secondX=argument2;
firstY=argument1;
secondY=argument3;
str = string(argument4);
draw_set_color(c_black);
draw_rectangle(firstX,firstY,secondX,secondY,0);
draw_set_color(c_white);
draw_rectangle(firstX,firstY,secondX,secondY,1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(str == "`" && caps)
{
    str = "~";
}
if(str == "1" && caps)
{
    str = "!";
}
if(str == "2" && caps)
{
    str = "@";
}
if(str == "3" && caps)
{
    str = "\#";
}
if(str == "4" && caps)
{
    str = "$";
}
if(str == "5" && caps)
{
    str = "%";
}
if(str == "6" && caps)
{
    str = "^";
}
if(str == "7" && caps)
{
    str = "&";
}
if(str == "8" && caps)
{
    str = "*";
}
if(str == "9" && caps)
{
    str = "(";
}
if(str == "0" && caps)
{
    str = ")";
}
if(str == "-" && caps)
{
    str = "_";
}
if(str == "+" && caps)
{
    str = "=";
}
if(str == "[" && caps)
{
    str = "{";
}
if(str == "]" && caps)
{
    str = "}";
}
if(str == "\" && caps)
{
    str = "|";
}
if(str == ";" && caps)
{
    str = ":";
}
if(str == "'" && caps)
{
    str = '"';
}
if(str == "," && caps)
{
    str = "<";
}
if(str == "." && caps)
{
    str = ">";
}
if(str == "/" && caps)
{
    str = "?";
}
if(mouse_x > firstX && mouse_x < secondX && mouse_y > firstY && mouse_y < secondY)
{   
    color = c_gray;
    if(mouse_check_button_pressed(mb_left))
    {
        if(str == "BK")
        {
            str = "";
            if(string_char_at(text,string_length(text)) != "#" && string_char_at(text,string_length(text)-1) != "\")
            {
                text = string_delete(text,string_length(text),1);
            }
            else
            {
                text = string_delete(text,string_length(text)-1,2);
            }
        }
        if(str == "SPACE")
        {
            str = " ";
        }
        if(str == "ENTER")
        {
            str = "#";
        }
        if(str == "CAPS")
        {
            //MAKE WORKING CAPS
            if(caps)
            {
                caps = false;
            }
            else
            {
                caps =true;
            }
            str = "";
        }
        if(str == "SHIFT")
        {
            //CHANGE CAPS BOOLEAN TO TRUE
            caps = true;
            str = "";
        }
        if(caps)
        {
            text += string_upper(str);
        }
        else
        {
            text += str;
        }
    }
    if(mouse_check_button_released(mb_left))
    {
        if(str == "SHIFT")
            {
                //CHANGE CAPS BOOLEAN TO FALSE;
                caps = false;
            }
        }
}
else
{
    color = c_white;
}
draw_set_color(color);
if(str = "CAPS" && caps)
{
    draw_set_color(c_red);
}
if(caps)
{
    str = string_upper(str);
}
draw_text(firstX + (secondX-firstX)/2, firstY+(secondY-firstY)/2,str);
draw_set_color(c_white);
