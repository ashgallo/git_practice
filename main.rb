def puts_git(cmd)
  puts`git #{cmd} -h`
end

def menu
  puts "1: Endter git command"
  puts "2: Exit"
  choice = gets.to_i
  case choice
    when 1
      puts "Enter git command"
      puts_git(gets.strip)
      menu
    when 2 
      Exit
    else
      puts "Invalid choice"
      menu
    end
  end