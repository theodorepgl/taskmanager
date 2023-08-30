require './item.rb'

class List
	attr_accessor :name, :items

	def initialize(name)
		@name = name
		@items = []
	end

	def add_item(title)
		item = Item.new(title)

		@items << item
		puts "Item #{item.name} has been added."
	end

	def display_items
		puts "Items #{name}:"
		@items.each_with_index do |item, index|
			if item.complete?
				status = "[x]"
			else
				status = "[ ]"
			end
			puts "#{index + 1} - #{status} - #{item.name}"
		end
	end

	def remove_item(item)
		@items.delete(item)
	end
end

# groceries = List.new ("groceries")
# groceries.add_item("jnt")
# groceries.add_item("gdex")
# groceries.add_item("citylink")
# groceries.display_items