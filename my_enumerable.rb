module MyEnumerable
  def all?
    check = true
    @list.each do |i|
      if (yield i) == false
        check = false
        break
      end
    end
    puts check
  end

  def any?
    found = false
    @list.each do |i|
      if (yield i) == true
        found = true
        break
      end
    end
    puts found
  end

  def filter
    filterd = []
    @list.each do |i|
      filterd.push(i) if (yield i) == true
    end
    print filterd
  end
end
