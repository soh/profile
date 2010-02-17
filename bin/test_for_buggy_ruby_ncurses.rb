require 'rubygems'
require 'ncurses'
require 'thread'

Ncurses.initscr
Ncurses.noecho
Ncurses.cbreak
Ncurses.curs_set 0

Thread.new do
  sleep 0.1
  Ncurses.stdscr.mvaddstr 0, 0, "library is GOOD."
end

begin
  Ncurses.stdscr.mvaddstr 0, 0, "library is BAD."
  Ncurses.getch
ensure
  Ncurses.curs_set 1
  Ncurses.endwin
  puts "bye"
end


