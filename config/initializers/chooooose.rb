def choose(n, k)
  return [[]] if n.nil? || n.empty? && k == 0
  return [] if n.nil? || n.empty? && k > 0
  return [[]] if n.size > 0 && k == 0
  c2 = n.clone
  c2.pop
  new_element = n.clone.pop
  choose(c2, k) + append_all(choose(c2, k-1), new_element)
end

def append_all(lists, element)
  lists.map { |l| l << element }
end
