require('rspec')
require('find_replace')

describe('String#find_replace') do
  it('Searches for the argument word in the object string, replaces the word if found') do
    expect('Hello World'.find_replace('hello', 'goodbye')).to(eq('goodbye World'))
  end
  it('Searches for the argument word in the object string, returns original string if not found') do
    expect('Hello world'.find_replace('huh', 'goodbye')).to(eq('Hello world'))
  end
end
