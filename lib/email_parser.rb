# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  # def self.save
  #   @@email << self.split(", ")
  # end

  def initialize(emails)
    @emails = emails
  end

  def parse
    list_of_emails = emails.split(/[\s,]+/).uniq
    # list_of_emails
  end

end
