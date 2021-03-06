SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    navigation.selected_class = 'active'

    # build first level
    primary.item 1, 'Home', '/'
    Kuhsaft::Page.find_by_slug_de('home').children.published.each do |page|
      unless page.url.blank?
        primary.item page.id, page.title, page.link
      end
    end
  end
end
