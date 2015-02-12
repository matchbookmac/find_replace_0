require('rspec')
require('find_replace')

describe('String#find_replace') do
  it('Searches for the argument word in the object string, replaces the word if found') do
    expect('hello world'.find_replace('hello', 'goodbye')).to(eq('goodbye world'))
  end
  it('Searches for the argument word in the object string, returns original string if not found') do
    expect('hello world'.find_replace('huh', 'goodbye')).to(eq('hello world'))
  end
end
