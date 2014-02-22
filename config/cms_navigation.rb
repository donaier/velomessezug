# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav'
    primary.item :pages, Kuhsaft::Page.model_name.human(:count => 2), kuhsaft.cms_pages_path, :highlights_on => %r(/cms$|/cms/pages)
    primary.item :supplier_nav, t('cms.suppliers.navigation_title'), cms_suppliers_path
    primary.item :activity_nav, t('cms.activities.navigation_title'), cms_activities_path
  end
  navigation.selected_class = 'active'
end
