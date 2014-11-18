class Cell
  def state
    if neighbors == 3
      true
    elsif neighbors == 2
      true
    else
      false
    end
  end

  def neighbors
  end
end
