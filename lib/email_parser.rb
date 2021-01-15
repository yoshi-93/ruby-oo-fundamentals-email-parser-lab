# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails = @emails.split(',')
        parsed_list = []
        emails.each do |email|
            parsed_list << email.split(' ')
        end
        parsed_list.flatten.uniq
    end

end

test = "JohnDoe@email.com JaneDoe@email.com, Billy@email.com"
testobject = EmailAddressParser.new(test)
puts testobject.parse
