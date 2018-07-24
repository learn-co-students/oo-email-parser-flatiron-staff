# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    emails.split(" ").map! do |e|
      if e.include? ","
        email_array << e.chomp(",")
      else
        email_array << e
      end
    end
    email_array.uniq
  end
end
