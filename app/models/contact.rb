class Contact < ApplicationRecord

  def friendly_time
  created_at.strftime("%m/%d/%Y")
  end

  def full_name
    first_name + " "+ last_name
  end

  def jap_phone

    "+81 "+phone_number
  end

end
