require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams')
require('pry')

get('/') do
  erb(:index)
end

get('/anagrams_result') do
  @display = params.fetch("first_word").all_tests(params.fetch("second_word"))
  erb(:anagrams_result)
end
