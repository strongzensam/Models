class Contact < ActiveRecord::Base
has_many :grouped_contacts
has_many :groups, through: :grouped_contacts

validates :first_name, :last_name, presence: true
validates :email, uniqueness: true

  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
  def japanese
    number = "+081 #{phone_number}"
  end
end
