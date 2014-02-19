require 'shoestrap/cms_model'

class Supplier < ActiveRecord::Base
  include Shoestrap::CMSModel

  scope :ordered, -> { order('position ASC') }

  has_attached_file :logo, 
    styles: { thumb: '200x200>' },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

  validates_presence_of :name, :link, :position

  before_validation :assign_position

  editable_attributes :name, :link, :position, :logo
  index_attributes :logo, :name, :link

  def assign_position
    self.position ||= (self.class.maximum(:position).to_i) + 1
  end
end
