class User < ActiveRecord::Base

  attr_accessible :username, :password

  validates :password_hash, :presence => true

  def password=(secret_str)
     self.password_hash = User.pw_hash(secret_str)
  end

  has_many :contacts,
    :class_name => "Contact",
    :foreign_key => :user_id,
    :primary_key => :id

  has_many :favorites,
    :class_name => "Favorite",
    :foreign_key => :user_id,
    :primary_key => :id

  has_many :favorite_contacts,
    :through => :favorites,
    :source => :contact

  def self.pw_hash(pw)
    return nil if pw.nil?
    puts "pw is #{pw.object_id}"
    a = 0
    pw.each_char {|c| a = a * 25 + c.ord}
    a.to_s
  end

  # # Alternative approach
  # before_save :make_hash
  # attr_accessor :password
  # def make_hash
  #   self.password_hash = pw_hash(password)
  # end

  def login
    self.assign_token
  end


  def assign_token
    self.token = SecureRandom.hex
    self.save!
  end

end
