require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams')
require('pry')

get('/') do
  erb(:index)
end

get('/anagrams_result') do
  @first_word = params.fetch("first_word")
  @second_word = params.fetch("second_word")
  tests = @first_word.all_tests(@second_word)
  @display = []
  tests.each() do |test|
    @display.push(test)
  end
  erb(:anagrams_result)
end
