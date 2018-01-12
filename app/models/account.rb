class Account < ApplicationRecord
  include ApplicationHelper

  has_secure_password
  enum user_type: { admin: 1, student: 2 }

end
