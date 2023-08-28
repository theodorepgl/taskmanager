class Task
  attr_accessor :description, :due_date, :completed, :assigned_to

  def initialize(description) #step one
    @description = description
    @due_date = nil
    @completed = false
    @assigned_to = []
  end

  def complete_task #step two
    @completed = true
  end

  def assign_user(user) #step three
    assigned_to << user
  end

  def set_due_date(date)
    @due_date = date
  end

  def
end

task = Task.new("This is my first task.")
puts task
puts task.description
