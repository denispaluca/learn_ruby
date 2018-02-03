class Book
# write your code here
  def title
    @title
  end

  def title=(str)
    arr = str.split
    arr.each{|v|
      if !["an","and","of","in","a","the"].include?(v)
        v.capitalize!
      end
    }
    arr[0].capitalize!
    @title = arr.join(' ')
  end
end
