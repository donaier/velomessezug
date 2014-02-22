require 'shoestrap/cms_model'

class Activity < ActiveRecord::Base
  include Shoestrap::CMSModel

  scope :ordered, -> { order('date, time ASC') }

  validates_presence_of :title

  editable_attributes :title, :description, :time, :date
  index_attributes :title, :description, :time, :date
end
