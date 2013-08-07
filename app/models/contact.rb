class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :address, :user_id

  belongs_to :user,
    :class_name => "User",
    :foreign_key => :user_id,
    :primary_key => :id
end