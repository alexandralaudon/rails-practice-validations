class Organization < ActiveRecord::Base
  validates :name, length: {minimum:3, maximum:20}
end
