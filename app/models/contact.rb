class Contact < ApplicationRecord
belongs_to :user
has_many :contact_groups
has_many :groups, through: :contact_groups

validates :first_name, :last_name, :email, presence: true
validates :email, uniqueness: true

  def friendly_time
  created_at.strftime("%m/%d/%Y")
  end

  def full_name
    first_name + " "+ last_name
  end

  def jap_phone

    "+81 "+phone_number
  end

  def user_id
    user_id
    
  end

end
