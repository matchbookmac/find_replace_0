require('rspec')
require('find_replace')

describe('String#find_replace') do
  it('Searches for the argument word in the object string, replaces the word if found') do
    expect('Hello World'.find_replace('hello', 'goodbye')).to(eq('goodbye World'))
  end
  it('Searches for the argument word in the object string, returns original string if not found') do
    expect('Hello world'.find_replace('huh', 'goodbye')).to(eq('Hello world'))
  end
  it('replaces a partial match') do
    expect('I am walking my cat to the cathedral'.find_replace('cat', 'dog')).to(eq('I am walking my dog to the doghedral'))
  end
end
