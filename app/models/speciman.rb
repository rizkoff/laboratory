class Speciman < ActiveRecord::Base
  has_many :shipments
  has_many :factors
  has_many :fvalues, :through => [:shipments, :factors]
end
