class Definition < ActiveRecord::Base
  validates :name, :def, :presence => true
  validates :name, uniqueness: true
end
