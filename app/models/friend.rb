class Friend < ApplicationRecord
  belongs_to :user, optional: true

  enum :status, [ :accepted, :requested ]
end
