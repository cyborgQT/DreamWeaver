// check whether the box is close to its destination with a leeway of 4 pixels both hor and vert
positioned = (x > (xx[cur] - 2) && x < (xx[cur] + 2) && y > ((yy[cur] - padding * 2) - 2) && y < ((yy[cur] - padding * 2) + 2));

// slight vertical bobbing
bob = sin(sine);
sine += .15;

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(ft_dialog);
draw_set_alpha(alpha);

width = min(max_width, string_width_ext(string_hash_to_newline(msg[cur]), -1, max_width) + padding * 2); // width of message, capped at max_width
height = string_height_ext(string_hash_to_newline(msg[cur]), -1, width) + padding * 2; // height of message box (varies based on message length)

// gradual width and height shifting of box
if (height_shift < height) {
    height_shift += (height - height_shift) / 5;
}

if (height_shift > height) {
    height_shift -= (height_shift - height) / 5;
}

if (width_shift < width) {
    width_shift += (width - width_shift) / 5;
}

if (width_shift > width) {
    width_shift -= (width_shift - width) / 5;
}

// draw box
draw_set_color(inside_col);
draw_roundrect_ext(x - width_shift / 2, y - height_shift + bob, x + width_shift / 2, y + bob, 32, 32, false);

// draw triangle (pointer)
/*
draw_triangle(x - padding, y + bob, x + padding, y + bob, x, y + padding / 2 + bob, false);
*/

// draw text
draw_set_color(text_col);
draw_text_ext(x, y - (height / 2) + bob, string_hash_to_newline(string_copy(msg[cur], 1, text)), -1, width - padding * 2);

hold = keyboard_check(key); // whether key is held or not

// increase speed
if (text < string_length(msg[cur])) {
    if (positioned) { // if in destination
        text += sp * (1 + hold);
    }
}

// finish sentence if not completed
if (keyboard_check_pressed(key)) {
    if (text != string_length(msg[cur])) {
        text = string_length(msg[cur]);
    } else {
        phase = 1;
    }
}

// move one to next message if it exists - destroy otherwise
if (text == string_length(msg[cur]) && keyboard_check_pressed(key) && phase == 1) {
    if (cur < array_length_1d(msg) - 1) {
        cur++;
        text = 0;
        phase = 0;
    } else {
        fade = 1; // fade out
    }
}

// gradual shifting of coordinates of box (below the pointer, as per '-padding * 2' for y)
if (x < xx[cur]) {
    x += ((xx[cur]) - x) / 2;
}

if (x > xx[cur]) {
    x -= (x - (xx[cur])) / 2;
}

if (y < (yy[cur] - padding * 2)) {
    y += ((yy[cur] - padding * 2) - y) / 2;
}

if (y > (yy[cur] - padding * 2)) {
    y -= (y - (yy[cur] - padding * 2)) / 2;
}

draw_set_alpha(1);

// fade-in/out and destroy when nearly invisible
if (fade == 0) {
    if (positioned) {
        if (alpha < 1) {
            alpha += (1 - alpha) / 5;
        }
    }
} else {
    if (alpha > 0) {
        alpha -= (alpha) / 5;
    }

    if (alpha < 0.05) {
        instance_destroy();
    }
}

