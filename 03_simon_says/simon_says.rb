#write your code here
def echo(a)
  return a
end

def shout(a)
  return a.upcase
end

def repeat(a,b=2)
  k =''
  b.times do
    k+=a+' '
  end
  return k.chop
end

def start_of_word(s,num)
  str = ''
  num.times do |i|
    str+=s[i]
  end
  return str
end

def first_word(a)
  arr = a.split
  return arr[0]
end

def titleize(s)
  str = s.split
  rt_value = ''
  little_words = ['and','or','the','etc','of','over']

  str.each.with_index{ |v,i|
    word_to_add = v.capitalize

    little_words.each{ |g|
      if v == g then
        word_to_add = v.downcase
      end
    }

    if i == 0 then
      word_to_add = v.downcase.capitalize
    end

    rt_value+=word_to_add+' '
  }

  return rt_value.chop
end