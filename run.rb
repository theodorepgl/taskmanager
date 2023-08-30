#In this project, you will build a command-line task manager application using Ruby.
#You will start by applying the fundamental concepts of Ruby programming to create a functional task manager.
#As you progress, you will extend the application with more advanced features,
#including serialization, file I/O, and enhanced user interaction.

require './item.rb'
require './list.rb'
require 'colorize'

puts "Welcome to Golf Pro Shop.".green
puts 
@list = ""

loop do
    puts "What would you like to do?".green
    puts "1 - Create List"
    puts "2 - Add item to list"
    puts "3 - Display items"
    puts "4 - Mark items complete"
    puts "5 - Remove items"
    puts "9 - To exit"
    choice = gets.chomp.to_i

    case choice
    when 1
        puts "Name your list:"
        name = gets.chomp

        @list = List.new(name)

        puts "You have just created #{@list.name}"

    when 2
        puts "Add item to #{@list.name}"
        title = gets.chomp

        @list.add_item(title)

    when 3
        @list.display_items

    when 4
        @list.display_items
        index = gets.chomp.to_i

        item = @list.items[index - 1]
        item.complete_task

        @list.display_items
    
    when 5
        @list.display_items
        index = gets.chomp.to_i

        item = @list.items[index - 1]
        @list.remove_item(item)

        @list.display_items

    when 9
        puts "Goodbye"
        exit  
    end
end