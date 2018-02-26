class NotificationsMailer < ActionMailer::Base
  default from: APP_CONFIG['defaults']['email'],
          reply_to: APP_CONFIG['defaults']['email']
  layout 'mailer'

  def inspection_request(content)
    @content = content
    mail(
      :from => @content['from'],
      :to => @content['to'],
      :bcc => @content['bcc'],
      :subject => 'HouseMaster :: Schedule Inspection'
    )
  end

  def request_inspection_thanks(content)
    @content = content
    mail(
      :from => @content['from'],
      :to => @content['to'],
      :subject => 'HouseMaster Inspection Request'
    )
  end

  def franchise_request(content)
    @content = content
    mail(
      :from => @content['from'],
      :to => @content['to'],
      :bcc => @content['bcc'],
      :subject => 'HouseMaster : Online Franchise Request'
    )
  end
end
