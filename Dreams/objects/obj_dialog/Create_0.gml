col = make_colour_rgb(0, 30, 184);

msg[0] = ""; // placeholder msg text
text = 0;    // char
cur = 0;     // current message
phase = 0;   // finish sentence/to-next

// customization variables
padding = 20;           // text padding
max_width = 500;	    // max width of text box
inside_col = c_white;   // inside color of box
text_col = col;    // text color
key = vk_enter;         // interaction key
sp = .2;                // characters per step

bob = 0;                // variable to hold slight movement
sine = 0;               // value

width_shift = 0;        // smooth box size x increase/decrease
height_shift = 0;       // smooth box size y increase/decrease

fade = 0;               // fade-in/fade-out
alpha = 1;				// transparency -- changes with phase

