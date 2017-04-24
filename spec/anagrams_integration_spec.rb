require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('String#find_and_replace', {:type => :feature}) do
  it('replaces string with passed parameter') do
    visit('/')
    fill_in('First word or phrase to compare:', :with => "Hello")
    fill_in('Second word or phrase to compare:', :with => "eollh")
    click_button('Submit')
    expect(page).to have_content('Words are equal lengths

Words are not antigrams

Words are anagrams

First word is a word

Second word is a word

First word is not a palindrome

Second word is not a palindrome')
  end
end
