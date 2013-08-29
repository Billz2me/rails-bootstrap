#           User Schema             #
# ----------------------------------#
# t.string   "email"                #
# t.string   "password_digest"      #
# ----------------------------------#

class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :email, :password, :password_confirmation

end

