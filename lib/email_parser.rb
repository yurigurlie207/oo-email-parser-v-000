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

def parse_one_iteration(@emails)
  @email_lis_item = @emails.split(', ')

  if @email_list_item.size < 2
    @email_list_item = @emails.split(' ')
  end

  @email_list
end
