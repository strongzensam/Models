class Contact < ActiveRecord::Base
  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def japanese
    number = "+081 #{phone_number}"
  end
end
