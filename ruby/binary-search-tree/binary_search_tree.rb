class Bst
  attr_accessor :data,
                :left,
                :right


  def initialize(data)
    p data
    self.data = data
  end

  def insert(value)
    if value > data
      right ? right.insert(value) : self.right = Bst.new(value)
    elsif value <= data
      left ? left.insert(value) : self.left = Bst.new(value)
    end
  end

  def each
    left.each { |node| yield(node) } if left
    yield(data)
    right.each { |node| yield(node) } if right
  end
end

