class User < ActiveRecord::Base
  has_one :feedback
end
