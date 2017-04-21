require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams')
require('pry')

get('/') do
  erb(:index)
end

get('/find_and_replace_result') do
  @display = params.fetch("word2").find_and_replace(params.fetch("find"), params.fetch("replace"))
  erb(:find_and_replace_result)
end
