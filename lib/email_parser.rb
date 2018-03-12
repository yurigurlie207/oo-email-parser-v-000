# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

 attr_accessor :emails, :email_list, :final_email_list

def initialize(emails)
  @emails = emails
end

#emails: original string
#@email: instance string
#@emails_fragment: a piece of what was split from original, string
#@emails_list_items: the newly split email array
#@email_list: final email list array

def parse

  #first do a first pass of splitting the string
  @email_list = @emails.split(', ')

  if @email_list.size < 2
    @final_email_list = @emails.split(' ')
  else
    @email_list.each do |item|
      item.split(', ')
    end

  end


  @final_email_list.uniq
end
