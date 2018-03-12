# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

 attr_accessor :emails, :email_list

def initialize(emails)
  @emails = emails
end

#emails: original string
#@email: instance string
#@emails_fragment: a piece of what was split from original, string
#@emails_list_items: the newly split email array
#@email_list: final email list array

def parse
  @parsed = 0

  #first do a first pass of splitting the string
  @email_list = @emails.split(', ')

  if @email_list.size < 2
    @email_list = @emails.split(' ')
  end

  #now, put the new array into a loop that will continuous split it's subelements
  while parsed == 0


  end



  @email_list.uniq
end

def parse_one_iteration(@emails_fragment)

  @email_list_items = @emails_fragment.split(', ')

  if @email_list_items.size < 2
    @email_list_items = @emails_fragment.split(' ')
  end

  @email_list_items
end
