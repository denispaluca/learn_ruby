#write your code here
def translate(a)
  words = a.split
  vowels = ['a','u','y','i','o','e']
  words.each.with_index{ |word, i|
    word.each_char{ |c|
      if !c.start_with?('a','u','y','i','o','e')
        word+=c
        word.sub!(c,'')
        if c == 'q' and word.start_with?('u')
          word+='u'
          word.sub!('u','')
          puts "hey"
        end
      else
        break
      end
      
    }
    word+='ay'
    words[i]=word
  }
  return words.join(' ').strip
end