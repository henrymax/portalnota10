class UserMailer < ActionMailer::Base
  
 def reset_notification(user)
   setup_email(user)
   @subject    += 'Link to reset your password'
   @body[:url]  = "#{SITE_URL}/reset/#{user.reset_code}"
 end

end
