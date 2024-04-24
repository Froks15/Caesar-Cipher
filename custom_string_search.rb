class String
  def find
    split.each do |elem|
      return elem if yield(elem)
    end

    nil
  end
end

a = 'Hello, Movses and Argam'
p a.find_name { |el| el.include?('Movses') }
