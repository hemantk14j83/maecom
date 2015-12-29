class Notifier < ApplicationMailer
  default :from=>"localecommerce@example.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_rcd.subject
  #
  def contact_rcd(contact)
    @contact=contact
    @greeting = "Hi"

    mail to: "hemant14j83@gmail.com",:subject=>"New Contact Recieved- #{contact.topics}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_replied.subject
  #
  def contact_replied
    @contact=contact
    @greeting = "Hi"

    mail to: "hemant14j83@gmail.com",:subject=>"New Contact Recieved- #{contact.topics}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_rcd.subject
  #
  def order_rcd
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
