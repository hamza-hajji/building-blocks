module Enumerable
  def my_each
    i = 0
    len = self.length
    while i < len
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    len = self.length
    while i < len
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    filtered = []
    self.my_each do |el|
      filtered << el if yield(el)
    end
    filtered
  end

  def my_all?
    all = true
    self.my_each do |el|
      all = false if !yield(el)
    end
    all
  end

  def my_any?
    any = false
    self.my_each do |el|
      any = true if yield(el)
    end
    any
  end

  def my_none?
    none = true
    self.my_each do |el|
      none = false if yield(el)
    end
    none
  end

  def my_count
    count = 0
    self.my_each do |el|
      count += 1 if yield(el)
    end
    count
  end

  def my_inject(initial)
    result = initial
    self.my_each do |el|
      result = yield(result, el)
    end
    result
  end

  # with proc or block
  def my_map(&my_proc)
    mapped = [] # modified array
    self.my_each do |el|
      mapped << (my_proc != nil ? my_proc.call(el) : yield(el))
    end
    mapped
  end
end

def multiply_els(els)
    els.my_inject(1) { |product, i| product * i }
end