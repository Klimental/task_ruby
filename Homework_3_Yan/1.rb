tasks = []

def show_menu
  puts "\n______________________________________________"
  puts "1. Add task"
  puts "2. Show all tasks"
  puts "3. Delete task"
  puts "4. Exit"
  print "Choose an option: "
end

def add_task(tasks)
  print "Enter a new task: "
  task = gets.chomp
  tasks << task
  puts "Task added!"
end

def show_tasks(tasks)
  if tasks.empty?
    puts "The task list is empty."
  else
    puts "Your tasks:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

def delete_task(tasks)
  show_tasks(tasks)
  return if tasks.empty?

  print "Enter the number of the task to delete: "
  index = gets.to_i - 1

  if index >= 0 && index < tasks.size
    removed = tasks.delete_at(index)
    puts "Task '#{removed}' has been deleted!"
  else
    puts "Invalid task number."
  end
end

loop do
  show_menu
  choice = gets.chomp

  case choice
  when "1"
    add_task(tasks)
  when "2"
    show_tasks(tasks)
  when "3"
    delete_task(tasks)
  when "4"
    puts "Exiting program. Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
