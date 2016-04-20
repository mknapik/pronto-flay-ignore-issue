class Duplication
  def self.fibonacci(n)
    return 1 if n == 0
    pair = (1..n).reduce([0, 1]) { |prev, _| [prev[1], prev[0] + prev[1]] }
    pair.last
  end

  def self.fibonacci2(n)
    return 1 if n == 0
    pair = (1..n).reduce([0, 1]) { |prev, _| [prev[1], prev[0] + prev[1]] }
    pair.last
  end
end
