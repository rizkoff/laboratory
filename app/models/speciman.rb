class Speciman < ActiveRecord::Base
  has_many :shipments, :dependent => :restrict
  has_many :factors, :dependent => :restrict
  has_many :fvalues, :through => [:shipments, :factors]
end
