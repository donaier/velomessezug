module Kuhsaft
  class ImageBrick < Brick

    has_attached_file :image,
      styles: { big: '1190x900', thumb: '120x100>' },
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

    validates :image, :presence => true

    def collect_fulltext
      [super, caption].join(' ')
    end

    def user_can_add_childs?
      false
    end
  end
end
