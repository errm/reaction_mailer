# Re-ActionMailer

ReactionMailer is designed to send real emails out using the files
generated by [Inaction Mailer](https://github.com/cwninja/inaction_mailer/)

It will even read emails served up by [PopThis](https://github.com/cwninja/popthis)

Most of the time it is most useful to have a rails app in development
not to send out any actual emails.

However it is usefull to be able to send real emails for things like
testing with [Litmus](http://litmus.com/).

## Installation

Install it:

    $ gem install reaction_mailer

## Usage

    Usage: remail [options] file1 file2 ...

    -u, --username USERNAME          Gmail Username
    -w, --password PASSWORD          Gmail Password
    -t, --to EMAIL                   Send the email to who?
    -p, --pop                        Read the emails to send from popthis
    -h, --help                       Display this screen

## Examples

Send an email to a given email address using a file
    $ remail -t test@emailtesting.com mail.0.txt
    Enter your gmail username: someone@gmail.com
    Enter your gmail password: *********
    #<Mail::Message:2244614900, Multipart: true, Headers:<Date: Mon, 27 Aug 2012 23:33:09 +0100>, <From: Sony <someone@somesuch.com>>, <To: test@emailtesting.com >, <Cc: >, <Bcc: >, <Subject: About your Test Email>, <Mime-Version: 1.0>, <Content-Type: multipart/alternative; boundary=mimepart_503bf5a5a802a_146ee8749b13c38>
    Send this email? y

   Ok that email just got sent! 

Send emails from the pop server
    $remail -t test@emailtesting.com -u someone@gmail.com -p
    Enter your gmail password: *********
    #<Mail::Message:2244614900, Multipart: true, Headers:<Date: Mon, 27 Aug 2012 23:33:09 +0100>, <From: Sony <someone@somesuch.com>>, <To: test@emailtesting.com >, <Cc: >, <Bcc: >, <Subject: About your Test Email>, <Mime-Version: 1.0>, <Content-Type: multipart/alternative; boundary=mimepart_503bf5a5a802a_146ee8749b13c38>

    Send this email? y

    Ok that email just got sent! 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
