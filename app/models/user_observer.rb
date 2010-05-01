class UserObserver < ActiveRecord::Observer

  #UserMailer.deliver_reset_notification(user) if user.recently_reset?

end
