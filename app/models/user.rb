class User < ApplicationRecord
  
  def self.authenticate(email, password)
    if User.where(email: email, password: password)
      User.where(email: email, password: password)
    else
      return nil
    end
  end
end
