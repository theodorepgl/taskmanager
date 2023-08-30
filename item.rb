class Item
  attr_accessor :name, :due_date, :completed, :assigned_to, :priority, :comments

  def initialize(name) #step one
    @name = name
    @assigned_to = []
    @due_date = nil
    @completed = false
    @priority = "Normal"
    @comments = {}
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

  def complete?
    @completed
  end

  def remove_user(name)
    @assigned_to.delete(name)
  end

  def set_priority(priority)
    @priority = priority
  end

  def add_comments(comments)
    @comments = comments
  end
end

# task1 = Task.new("Ready to go")
# puts task1.name
# puts task1.completed
# puts task1.assign_user("theo")
# puts task1.set_due_date("3pm")
# puts task1.set_priority("HIGH")
# puts task1.add_comments("submit by late 31 August")
