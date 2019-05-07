class User < ApplicationRecord

  has_many :reviews, :dependent => :destroy
  has_many :restaurants, through: :reviews


  def authenticate(password)
    if password == self.password
      return true
    else
      return false
    end
  end

end
