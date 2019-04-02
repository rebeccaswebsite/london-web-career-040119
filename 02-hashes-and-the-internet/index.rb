# Hashes and the Internet
require 'pry'
require 'json'
require 'rest-client'

# name = "Nicolas"
# person = '{"name": "Nicolas"}'
#
# response1 = RestClient.get('https://www.reddit.com/')
# response2 = RestClient.get('https://www.reddit.com/.json')
#
# data = JSON.parse(response2)

# Gooks


# Welcome the user
def welcome
  puts "Welcome to Gooks!"
end

# Ask the user for a search term
def get_search_term
  puts "Enter a search term below:"
  gets.chomp
end

# Find books using the google books API
# Parse the json that comes back
def search_for_google_books(search_term)
  url = "https://www.googleapis.com/books/v1/volumes?q=#{search_term}"
  response = RestClient.get(url)
  hash = JSON.parse(response)
  hash["items"]
end

# display info for a single book
# For each book, display title and snippet
def display_book_info(book)
  puts "*" * 20
  puts ""
  puts "Title: " + book["volumeInfo"]["title"]
  puts "Snippet: " + book["searchInfo"]["textSnippet"]
  puts ""
end

# TODO: Implement the 2 methods below
# and use them in "display_book_info"
def get_book_title(book)
end

# Note: "textSnippet" is not always available
# so be sure to provide a nice user experience when it's missing
def get_book_snippet(book)
end

# Loop through each book in the results
def display_all_book_info(books)
  books.each { |book| display_book_info(book) }
end

# Say goodbye!
def bye
  puts "See you again soon!"
end

def run
  # Welcome the user
  welcome
  # Ask the user for a search term
  search_term = get_search_term
  books = search_for_google_books(search_term)
  display_all_book_info(books)
  bye
end

run

# binding.pry
# puts "Mischief managed!"
