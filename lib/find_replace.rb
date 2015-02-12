require('pry')

class String
  define_method(:find_replace) do |find, replace_with|
    text = self.split()
    change = false
    text.each().with_index() do |word, x|
      if word.eql?(find)
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
