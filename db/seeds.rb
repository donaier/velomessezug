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

home = Kuhsaft::Page.find_or_create_by(slug_de: 'home')
home.update_attributes(
    position: 0,  
    title_de: "home",
    slug_de: "home",
    keywords_de: "",
    description_de: "",
    published: 1,
    url_de: "de",
    page_type: "navigation",
    page_title_de: "Velomesse Zug"
  )

suppliers = Kuhsaft::Page.find_or_create_by(slug_de: 'aussteller')
suppliers.update_attributes(
    position: 0,
    title_de: "Aussteller",
    slug_de: "aussteller",
    keywords_de: "",
    description_de: "",
    published: 1,
    url_de: "de/aussteller",
    ancestry: home.id,
    page_title_de: "Velomesse Zug - Aussteller"
  )

activities = Kuhsaft::Page.find_or_create_by(slug_de: 'aktivitaeten')
activities.update_attributes(
    position: 1,
    title_de: "Aktivitäten",
    slug_de: "aktivitaeten",
    keywords_de: "",
    description_de: "",
    published: 1,
    url_de: "de/aktivitaeten",
    ancestry: home.id,
    page_title_de: "Velomesse Zug - Aktivitäten"
  )

contact = Kuhsaft::Page.find_or_create_by(slug_de: 'kontakt')
contact.update_attributes(
    position: 2,
    title_de: "Kontakt",
    slug_de: "kontakt",
    keywords_de: "",
    description_de: "",
    published: 1,
    url_de: "de/kontakt",
    ancestry: home.id,
    page_title_de: "Velomesse Zug - Kontakt/Anfahrt"
  )
