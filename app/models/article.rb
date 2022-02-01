class Article < ApplicationRecord
  # связка с comments
  has_many :comments
end
