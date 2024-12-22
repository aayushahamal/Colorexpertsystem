% Skin tones
skin_tone(fair).
skin_tone(light_fair).
skin_tone(wheatish).
skin_tone(light_brown).
skin_tone(brown).
skin_tone(dark_brown).
skin_tone(very_dark).

% Undertones
undertone(warm).
undertone(cool).
undertone(neutral).

% Color suggestions for various skin tones and undertones

color(warm, soft_yellow).
color(warm, coral).
color(warm, peach).
color(warm, light_pink).
color(cool, lavender).
color(cool, pale_blue).
color(cool, mint_green).
color(cool, baby_pink).
color(earthy, brown).
color(earthy, teal).
color(earthy, olive).
color(earthy, mustard).
color(warm, mustard).
color(warm, burgundy).
color(warm, burnt_orange).
color(warm, golden_yellow).
color(cool, emerald_green).
color(cool, deep_purple).
color(cool, cobalt_blue).
color(earthy, gray).
color(earthy, dark_olive).
color(earthy, forest_green).
color(warm, red).
color(warm, burnt_sienna).
color(warm, yellow).
color(warm, terracotta).
color(bright, red).
color(bright, royal_blue).
color(warm, burnt_orange).
color(cool, deep_blue).
color(cool, navy_blue).
color(cool, charcoal_gray).
color(cool, slate_gray).
color(earthy, dark_brown).
color(earthy, rich_burgundy).
color(earthy, maroon).
color(earthy, rust).
color(warm, deep_burgundy).
color(warm, bright_orange).
color(warm, dark_red).
color(warm, burnt_copper).
color(cool, dark_blue).
color(cool, deep_purple).
color(cool, violet).
color(cool, royal_blue).
color(bright, white).
color(bright, fuchsia).
color(bright, electric_blue).
color(bright, bright_yellow).

% Rule to suggest color based on skin tone and undertone
suggest_color :-
    write('Welcome to the Dress Color Suggestion Expert System!'), nl,
    write('Please follow the instructions below to get color suggestions based on your skin tone and undertone.'), nl,

    % Ask for skin tone
    write('Enter your skin tone (fair, light_fair, wheatish, light_brown, brown, dark_brown, very_dark): '), nl,
    read(SkinTone),

    % Ask for undertone
    write('Enter your undertone (warm, cool, neutral): '), nl,
    read(Undertone),

    % Suggest colors
    suggest_color_for_skin(SkinTone, Undertone).

suggest_color_for_skin(SkinTone, Undertone) :-
    write('Based on your input, here are the suggested colors: '), nl,
    complexion_based_color(SkinTone, Undertone, Color),
    write(Color), nl,
    fail.

suggest_color_for_skin(_, _) :-
    write('Thank you for using the system!'), nl.

% If the person's skin tone is fair and undertone is warm
complexion_based_color(fair, warm, Color) :-
    color(warm, Color).

% If the person's skin tone is fair and undertone is cool
complexion_based_color(fair, cool, Color) :-
    color(cool, Color).

% If the person's skin tone is light brown and undertone is neutral
complexion_based_color(light_brown, neutral, Color) :-
    color(earthy, Color).

% If the person's skin tone is wheatish and undertone is warm
complexion_based_color(wheatish, warm, Color) :-
    color(warm, Color).

% If the person's skin tone is light brown and undertone is cool
complexion_based_color(light_brown, cool, Color) :-
    color(cool, Color).

% If the person's skin tone is brown and undertone is neutral
complexion_based_color(brown, neutral, Color) :-
    color(earthy, Color).

% If the person's skin tone is brown and undertone is warm
complexion_based_color(brown, warm, Color) :-
    color(warm, Color).

% If the person's skin tone is dark brown and undertone is cool
complexion_based_color(dark_brown, cool, Color) :-
    color(cool, Color).

% If the person's skin tone is dark brown and undertone is neutral
complexion_based_color(dark_brown, neutral, Color) :-
    color(earthy, Color).

% If the person's skin tone is very dark and undertone is warm
complexion_based_color(very_dark, warm, Color) :-
    color(warm, Color).

% If the person's skin tone is very dark and undertone is cool
complexion_based_color(very_dark, cool, Color) :-
    color(cool, Color).

% If the person's skin tone is very dark and wants bright colors
complexion_based_color(very_dark, bright, Color) :-
    color(bright, Color).
