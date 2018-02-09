require 'colorize'

def puts_git(cmd)
  puts`git #{cmd} -h`
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Endter git command".colorize(:cyan)
  puts "2: Exit".colorize(:cyan)
  choice = gets.to_i
  case choice
    when 1
      puts "Enter git command".colorize(:teal)
      puts_git(gets.strip)
      menu
    when 2 
      Exit
    else
      puts "Invalid choice".colorize(:red)
      menu
    end
  end

menu