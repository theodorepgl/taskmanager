require_relative 'task'

class Checklist
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(description)
    task = Task.new(description)
    @tasks << task
  end

  def complete_task(index)
    @tasks[index].mark_as_completed if index >= 0 && index < @tasks.length
  end

  def print_tasks
    puts "To-Do List:"
    @tasks.each_with_index do |task, index|
      status = task.completed ? "[x]" : "[ ]"
      puts "#{index + 1}. #{status} #{task.description}"
    end
  end
end

# Example usage:
checklist = Checklist.new
checklist.add_task("Buy groceries")
checklist.add_task("Clean the house")
checklist.complete_task(0)

checklist.print_tasks