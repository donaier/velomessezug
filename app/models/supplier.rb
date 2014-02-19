require 'shoestrap/cms_model'

class Supplier < ActiveRecord::Base
  include Shoestrap::CMSModel

  scope :ordered, -> { order('position ASC') }

  validates_presence_of :name, :link, :position

  before_validation :assign_position

  editable_attributes :name, :link, :logo, :position
  index_attributes :logo, :name, :link

  def assign_position
    self.position ||= (self.class.maximum(:position).to_i) + 1
  end
end
