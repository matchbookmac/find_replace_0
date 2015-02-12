require('pry')

class String
  define_method(:find_replace) do |find, replace_with|
    text = self.split()
    find_downcase = find.downcase()
    change = false
    text.each().with_index() do |word, x|
      current_word = word.downcase()
      if current_word.eql?(find_downcase)
        text[x] = replace_with
        change = true
      end
    end
    text = text.join(' ')
    if change.==(true)
      text
    elsif change.==(false)
      self
    end
  end 
end

# try String#scan
