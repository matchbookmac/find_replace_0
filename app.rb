require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_replace.rb')

get('/form') do
  erb(:form)
end

get('/document') do
  @text = params.fetch('text')
  @word = params.fetch('word')
  @replace_with = params.fetch('replace_with')
  @edited_text = @text.find_replace(@word, @replace_with)
  erb(:document)
end
