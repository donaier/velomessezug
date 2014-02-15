brick_types = [
  { class_name: 'Kuhsaft::TextBrick', group: 'elements' },
  { class_name: 'Kuhsaft::ImageBrick', group: 'elements' },
  { class_name: 'Kuhsaft::PlaceholderBrick', group: 'elements' }
]
Kuhsaft::BrickType.delete_all
brick_types.each do |bt|
  brick_type = Kuhsaft::BrickType.find_or_create_by(class_name: bt[:class_name])
  brick_type.update! bt
end
