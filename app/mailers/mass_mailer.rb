class MassMailer < ApplicationMailer
  include Roadie::Rails::Mailer

  default from: "#{Commizion::Application.config.site_name} <notification@#{ENV['DOMAIN'] || 'example.com'}>"

  add_template_helper(ApplicationHelper)

  def regular(mass_mail, recipient)
    @mass_mail = mass_mail
    @recipient = recipient

    roadie_mail({
      to: @recipient.email,
      subject: @mass_mail.title
    })
  end
end
