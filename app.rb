require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_replace.rb')

get('/form') do
  erb(:form)
end

get('/document') do
  erb(:document)
end
