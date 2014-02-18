# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav'
    primary.item :pages, Kuhsaft::Page.model_name.human(:count => 2), kuhsaft.cms_pages_path, :highlights_on => %r(/cms$|/cms/pages)
  end
  navigation.selected_class = 'active'
end
