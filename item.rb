class Task
  attr_accessor :description, :due_date, :completed, :assigned_to, :priority, :comments

  def initialize(description) #step one
    @description = description
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