draw_self();

// Only show "Press E" text if the book is interactable and player is close
if (!global.book_mini_game_finished && player_is_close) {
    draw_text(x, y - 40, "Press E");
}
