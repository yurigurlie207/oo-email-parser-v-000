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

def parse



  @email_list.uniq
end

def parse_one_iteration(@emails_fragment)

  @email_lis_items = @emails_fragment.split(', ')

  if @email_list_items.size < 2
    @email_list_items = @emails_fragment.split(' ')
  end

  @email_list_items
end
