class DemoMailer < ApplicationMailer
    def mail_message
        mail(to: 'patansharu654321@gmail.com', subject: "You got a new message!")
    end
end
