# Sendmail

Sendmail command in Ruby.

## Usage

    Sendmail.sendmail! "Subject: Hello\n\nText...", to: "to@example.tld"
    #=> true/false
    
    include Sendmail
    
    sendmail! "Subject: Hello\n\nText...", to: "to@example.tld"
    #=> true/false

Change sendmail bin :

    Sendmail.bin = "/path/to/sendmail"

Default bin is `"sendmail"`.

Change sendmail arguments :

    Sendmail.args = "-it"

Default arguments is `"-i"`
