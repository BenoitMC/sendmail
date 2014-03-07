# Sendmail

Sendmail command in Ruby.

## Usage

    Sendmail.sendmail! "to@example.tld", "Subject: Hello\n\nText..."
    #=> true/false
    
    include Sendmail
    
    sendmail! "to@example.tld", "Subject: Hello\n\nText..."
    #=> true/false

Change sendmail bin :

    Sendmail.bin = "/path/to/sendmail"

Default bin is `which sendmail`.
