class User < ActiveRecord::Base
  has_many :themes, dependent: :destroy
  authenticates_with_sorcery!
end
