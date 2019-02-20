require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu 
  puts "Main Menu".colorize(:blue)
  puts '1: Enter git command'
  puts '2: Exit'.colorize(:red)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter command'.colorize(:cyan)
    puts_git(gets.strip)
    menu
  when 2
    exit
  else 
    puts 'Invalid Choice'.colorize(:magenta)
    menu
  end
end

menu