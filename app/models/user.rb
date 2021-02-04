class User < ApplicationRecord
  belongs_to :city
  has_many :comments
  has_many :pm_sender, class_name: "PrivateMessage"
  has_and_belongs_to_many :pm_recipient, class_name: "PrivateMessage"
end
