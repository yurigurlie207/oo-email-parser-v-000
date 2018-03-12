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

  @email_list = @emails.split(', ')

  if @email_list.size < 2
    @email_list = @emails.split(' ')
  else
    @email_list.each do |item|
      item.split(' ').each do |item2|
        @email_list.pop(item)
        @email_list << item2
      end
    end
  end

  @email_list.uniq
end

end
