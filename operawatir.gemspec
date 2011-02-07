# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{operawatir}
  s.version = "0.3.5"
  s.platform = %q{jruby}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Deniz Turkoglu", "Andreas Tolf Tolfsen", "Chris Lloyd", "Stuart Knightley"]
  s.date = %q{2011-02-07}
  s.description = %q{    OperaWatir is a part of the Watir (pronounced water) family of
    free software Ruby libraries for automating web
    browsers.  OperaWatir provides a querying engine and Ruby bindings
    for a backend Java library, OperaDriver, for driving the Opera web
    browser.  It aims for full compliancy with the watirspec
    specification.
}
  s.email = ["dturkoglu@opera.com", "andreastt@opera.com", "christopherl@opera.com", "stuartk@opera.com"]
  s.executables = ["desktopwatir", "operawatir"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitmodules",
    ".yardopts",
    "AUTHORS",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/desktopwatir",
    "bin/operawatir",
    "lib/operadriver/APACHE_2.0_LICENSE.txt",
    "lib/operadriver/NEW_BSD_LICENSE.txt",
    "lib/operadriver/commons-io-2.0.1.jar",
    "lib/operadriver/commons-jxpath-1.3.jar",
    "lib/operadriver/protobuf-java-2.3.0.jar",
    "lib/operadriver/selenium-common.jar",
    "lib/operadriver/webdriver-opera.jar",
    "lib/operawatir.rb",
    "lib/operawatir/browser.rb",
    "lib/operawatir/collection.rb",
    "lib/operawatir/compat.rb",
    "lib/operawatir/compat/browser.rb",
    "lib/operawatir/compat/collection.rb",
    "lib/operawatir/compat/element.rb",
    "lib/operawatir/compat/element_finders.rb",
    "lib/operawatir/compat/window.rb",
    "lib/operawatir/desktop-waiter.rb",
    "lib/operawatir/desktop_browser.rb",
    "lib/operawatir/desktop_common.rb",
    "lib/operawatir/desktop_container.rb",
    "lib/operawatir/desktop_enums.rb",
    "lib/operawatir/desktop_exceptions.rb",
    "lib/operawatir/desktop_helper.rb",
    "lib/operawatir/element.rb",
    "lib/operawatir/exceptions.rb",
    "lib/operawatir/helper.rb",
    "lib/operawatir/keys.rb",
    "lib/operawatir/platform.rb",
    "lib/operawatir/preferences.rb",
    "lib/operawatir/quickwidgets.rb",
    "lib/operawatir/quickwidgets/quick_addressfield.rb",
    "lib/operawatir/quickwidgets/quick_button.rb",
    "lib/operawatir/quickwidgets/quick_checkbox.rb",
    "lib/operawatir/quickwidgets/quick_dialogtab.rb",
    "lib/operawatir/quickwidgets/quick_dropdown.rb",
    "lib/operawatir/quickwidgets/quick_editfield.rb",
    "lib/operawatir/quickwidgets/quick_label.rb",
    "lib/operawatir/quickwidgets/quick_radiobutton.rb",
    "lib/operawatir/quickwidgets/quick_searchfield.rb",
    "lib/operawatir/quickwidgets/quick_tab.rb",
    "lib/operawatir/quickwidgets/quick_thumbnail.rb",
    "lib/operawatir/quickwidgets/quick_toolbar.rb",
    "lib/operawatir/quickwidgets/quick_treeitem.rb",
    "lib/operawatir/quickwidgets/quick_treeview.rb",
    "lib/operawatir/quickwidgets/quick_widget.rb",
    "lib/operawatir/quickwidgets/quick_window.rb",
    "lib/operawatir/selector.rb",
    "lib/operawatir/spatnav.rb",
    "lib/operawatir/version.rb",
    "lib/operawatir/window.rb",
    "operawatir.gemspec",
    "spec/fire_event/fire_event.rb",
    "spec/fire_event/interactive/onBlur.html",
    "spec/fire_event/interactive/onChange.html",
    "spec/fire_event/interactive/onClick.html",
    "spec/fire_event/interactive/onDblClick.html",
    "spec/fire_event/interactive/onFocus.html",
    "spec/fire_event/interactive/onMouseDown.html",
    "spec/fire_event/interactive/onMouseMove.html",
    "spec/fire_event/interactive/onMouseOut.html",
    "spec/fire_event/interactive/onMouseOver.html",
    "spec/fire_event/interactive/onMouseUp.html",
    "spec/fire_event/interactive/onScroll.html",
    "spec/legacy_watirspec/area_spec.rb",
    "spec/legacy_watirspec/areas_spec.rb",
    "spec/legacy_watirspec/browser_spec.rb",
    "spec/legacy_watirspec/button_spec.rb",
    "spec/legacy_watirspec/buttons_spec.rb",
    "spec/legacy_watirspec/checkbox_spec.rb",
    "spec/legacy_watirspec/checkboxes_spec.rb",
    "spec/legacy_watirspec/collections_spec.rb",
    "spec/legacy_watirspec/dd_spec.rb",
    "spec/legacy_watirspec/dds_spec.rb",
    "spec/legacy_watirspec/del_spec.rb",
    "spec/legacy_watirspec/dels_spec.rb",
    "spec/legacy_watirspec/div_spec.rb",
    "spec/legacy_watirspec/divs_spec.rb",
    "spec/legacy_watirspec/dl_spec.rb",
    "spec/legacy_watirspec/dls_spec.rb",
    "spec/legacy_watirspec/dt_spec.rb",
    "spec/legacy_watirspec/dts_spec.rb",
    "spec/legacy_watirspec/element_spec.rb",
    "spec/legacy_watirspec/em_spec.rb",
    "spec/legacy_watirspec/ems_spec.rb",
    "spec/legacy_watirspec/filefield_spec.rb",
    "spec/legacy_watirspec/filefields_spec.rb",
    "spec/legacy_watirspec/fixtures/2000_spans.html",
    "spec/legacy_watirspec/fixtures/bug_duplicate_attributes.html",
    "spec/legacy_watirspec/fixtures/bug_javascript_001.html",
    "spec/legacy_watirspec/fixtures/buttons_with_duplicate_ids.html",
    "spec/legacy_watirspec/fixtures/collections.html",
    "spec/legacy_watirspec/fixtures/definition_lists.html",
    "spec/legacy_watirspec/fixtures/euc-jp_text.html",
    "spec/legacy_watirspec/fixtures/forms_with_input_elements.html",
    "spec/legacy_watirspec/fixtures/frame_1.html",
    "spec/legacy_watirspec/fixtures/frame_2.html",
    "spec/legacy_watirspec/fixtures/frames.html",
    "spec/legacy_watirspec/fixtures/iframes.html",
    "spec/legacy_watirspec/fixtures/images.html",
    "spec/legacy_watirspec/fixtures/images/1.gif",
    "spec/legacy_watirspec/fixtures/images/2.gif",
    "spec/legacy_watirspec/fixtures/images/3.gif",
    "spec/legacy_watirspec/fixtures/images/button.jpg",
    "spec/legacy_watirspec/fixtures/images/circle.jpg",
    "spec/legacy_watirspec/fixtures/images/map.gif",
    "spec/legacy_watirspec/fixtures/images/map2.gif",
    "spec/legacy_watirspec/fixtures/images/minus.gif",
    "spec/legacy_watirspec/fixtures/images/originaltriangle.jpg",
    "spec/legacy_watirspec/fixtures/images/plus.gif",
    "spec/legacy_watirspec/fixtures/images/square.jpg",
    "spec/legacy_watirspec/fixtures/images/triangle.jpg",
    "spec/legacy_watirspec/fixtures/iso-2022-jp_text.html",
    "spec/legacy_watirspec/fixtures/javascript/helpers.js",
    "spec/legacy_watirspec/fixtures/jquery.html",
    "spec/legacy_watirspec/fixtures/latin1_text.html",
    "spec/legacy_watirspec/fixtures/multiple_ids.html",
    "spec/legacy_watirspec/fixtures/non_control_elements.html",
    "spec/legacy_watirspec/fixtures/parser_bug_001.html",
    "spec/legacy_watirspec/fixtures/prevent_form_submit.html",
    "spec/legacy_watirspec/fixtures/right_click.html",
    "spec/legacy_watirspec/fixtures/shift_jis_text.html",
    "spec/legacy_watirspec/fixtures/tables.html",
    "spec/legacy_watirspec/fixtures/timeout.html",
    "spec/legacy_watirspec/fixtures/timeout_window_location.html",
    "spec/legacy_watirspec/fixtures/tiny_mce.html",
    "spec/legacy_watirspec/fixtures/utf8_text.html",
    "spec/legacy_watirspec/fixtures/watirspec.css",
    "spec/legacy_watirspec/form_spec.rb",
    "spec/legacy_watirspec/forms_spec.rb",
    "spec/legacy_watirspec/frame_spec.rb",
    "spec/legacy_watirspec/frames_spec.rb",
    "spec/legacy_watirspec/guards.rb",
    "spec/legacy_watirspec/hidden_spec.rb",
    "spec/legacy_watirspec/hiddens_spec.rb",
    "spec/legacy_watirspec/hn_spec.rb",
    "spec/legacy_watirspec/hns_spec.rb",
    "spec/legacy_watirspec/image_spec.rb",
    "spec/legacy_watirspec/images_spec.rb",
    "spec/legacy_watirspec/ins_spec.rb",
    "spec/legacy_watirspec/inses_spec.rb",
    "spec/legacy_watirspec/label_spec.rb",
    "spec/legacy_watirspec/labels_spec.rb",
    "spec/legacy_watirspec/li_spec.rb",
    "spec/legacy_watirspec/link_spec.rb",
    "spec/legacy_watirspec/links_spec.rb",
    "spec/legacy_watirspec/lis_spec.rb",
    "spec/legacy_watirspec/map_spec.rb",
    "spec/legacy_watirspec/maps_spec.rb",
    "spec/legacy_watirspec/meta_spec.rb",
    "spec/legacy_watirspec/metas_spec.rb",
    "spec/legacy_watirspec/ol_spec.rb",
    "spec/legacy_watirspec/ols_spec.rb",
    "spec/legacy_watirspec/option_spec.rb",
    "spec/legacy_watirspec/p_spec.rb",
    "spec/legacy_watirspec/pre_spec.rb",
    "spec/legacy_watirspec/pres_spec.rb",
    "spec/legacy_watirspec/ps_spec.rb",
    "spec/legacy_watirspec/radio_spec.rb",
    "spec/legacy_watirspec/radios_spec.rb",
    "spec/legacy_watirspec/select_list_spec.rb",
    "spec/legacy_watirspec/select_lists_spec.rb",
    "spec/legacy_watirspec/server.rb",
    "spec/legacy_watirspec/span_spec.rb",
    "spec/legacy_watirspec/spans_spec.rb",
    "spec/legacy_watirspec/spec_helper.rb",
    "spec/legacy_watirspec/strong_spec.rb",
    "spec/legacy_watirspec/strongs_spec.rb",
    "spec/legacy_watirspec/table_bodies_spec.rb",
    "spec/legacy_watirspec/table_body_spec.rb",
    "spec/legacy_watirspec/table_cell_spec.rb",
    "spec/legacy_watirspec/table_cells_spec.rb",
    "spec/legacy_watirspec/table_footer_spec.rb",
    "spec/legacy_watirspec/table_footers_spec.rb",
    "spec/legacy_watirspec/table_header_spec.rb",
    "spec/legacy_watirspec/table_headers_spec.rb",
    "spec/legacy_watirspec/table_row_spec.rb",
    "spec/legacy_watirspec/table_rows_spec.rb",
    "spec/legacy_watirspec/table_spec.rb",
    "spec/legacy_watirspec/tables_spec.rb",
    "spec/legacy_watirspec/text_field_spec.rb",
    "spec/legacy_watirspec/text_fields_spec.rb",
    "spec/legacy_watirspec/ul_spec.rb",
    "spec/legacy_watirspec/uls_spec.rb",
    "spec/legacy_watirspec/watir_compatibility_spec.rb",
    "spec/legacy_watirspec/watirspec_helper.rb",
    "utils/Rakefile",
    "utils/formatters/operahelper_formatter.rb",
    "utils/formatters/spartan_formatter.rb"
  ]
  s.homepage = %q{http://operasoftware.github.com/operawatir}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{operawatir}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Toolkit for automating interactions with the Opera web browser.}
  s.test_files = [
    "spec/fire_event/fire_event.rb",
    "spec/legacy_watirspec/area_spec.rb",
    "spec/legacy_watirspec/areas_spec.rb",
    "spec/legacy_watirspec/browser_spec.rb",
    "spec/legacy_watirspec/button_spec.rb",
    "spec/legacy_watirspec/buttons_spec.rb",
    "spec/legacy_watirspec/checkbox_spec.rb",
    "spec/legacy_watirspec/checkboxes_spec.rb",
    "spec/legacy_watirspec/collections_spec.rb",
    "spec/legacy_watirspec/dd_spec.rb",
    "spec/legacy_watirspec/dds_spec.rb",
    "spec/legacy_watirspec/del_spec.rb",
    "spec/legacy_watirspec/dels_spec.rb",
    "spec/legacy_watirspec/div_spec.rb",
    "spec/legacy_watirspec/divs_spec.rb",
    "spec/legacy_watirspec/dl_spec.rb",
    "spec/legacy_watirspec/dls_spec.rb",
    "spec/legacy_watirspec/dt_spec.rb",
    "spec/legacy_watirspec/dts_spec.rb",
    "spec/legacy_watirspec/element_spec.rb",
    "spec/legacy_watirspec/em_spec.rb",
    "spec/legacy_watirspec/ems_spec.rb",
    "spec/legacy_watirspec/filefield_spec.rb",
    "spec/legacy_watirspec/filefields_spec.rb",
    "spec/legacy_watirspec/form_spec.rb",
    "spec/legacy_watirspec/forms_spec.rb",
    "spec/legacy_watirspec/frame_spec.rb",
    "spec/legacy_watirspec/frames_spec.rb",
    "spec/legacy_watirspec/guards.rb",
    "spec/legacy_watirspec/hidden_spec.rb",
    "spec/legacy_watirspec/hiddens_spec.rb",
    "spec/legacy_watirspec/hn_spec.rb",
    "spec/legacy_watirspec/hns_spec.rb",
    "spec/legacy_watirspec/image_spec.rb",
    "spec/legacy_watirspec/images_spec.rb",
    "spec/legacy_watirspec/ins_spec.rb",
    "spec/legacy_watirspec/inses_spec.rb",
    "spec/legacy_watirspec/label_spec.rb",
    "spec/legacy_watirspec/labels_spec.rb",
    "spec/legacy_watirspec/li_spec.rb",
    "spec/legacy_watirspec/link_spec.rb",
    "spec/legacy_watirspec/links_spec.rb",
    "spec/legacy_watirspec/lis_spec.rb",
    "spec/legacy_watirspec/map_spec.rb",
    "spec/legacy_watirspec/maps_spec.rb",
    "spec/legacy_watirspec/meta_spec.rb",
    "spec/legacy_watirspec/metas_spec.rb",
    "spec/legacy_watirspec/ol_spec.rb",
    "spec/legacy_watirspec/ols_spec.rb",
    "spec/legacy_watirspec/option_spec.rb",
    "spec/legacy_watirspec/p_spec.rb",
    "spec/legacy_watirspec/pre_spec.rb",
    "spec/legacy_watirspec/pres_spec.rb",
    "spec/legacy_watirspec/ps_spec.rb",
    "spec/legacy_watirspec/radio_spec.rb",
    "spec/legacy_watirspec/radios_spec.rb",
    "spec/legacy_watirspec/select_list_spec.rb",
    "spec/legacy_watirspec/select_lists_spec.rb",
    "spec/legacy_watirspec/server.rb",
    "spec/legacy_watirspec/span_spec.rb",
    "spec/legacy_watirspec/spans_spec.rb",
    "spec/legacy_watirspec/spec_helper.rb",
    "spec/legacy_watirspec/strong_spec.rb",
    "spec/legacy_watirspec/strongs_spec.rb",
    "spec/legacy_watirspec/table_bodies_spec.rb",
    "spec/legacy_watirspec/table_body_spec.rb",
    "spec/legacy_watirspec/table_cell_spec.rb",
    "spec/legacy_watirspec/table_cells_spec.rb",
    "spec/legacy_watirspec/table_footer_spec.rb",
    "spec/legacy_watirspec/table_footers_spec.rb",
    "spec/legacy_watirspec/table_header_spec.rb",
    "spec/legacy_watirspec/table_headers_spec.rb",
    "spec/legacy_watirspec/table_row_spec.rb",
    "spec/legacy_watirspec/table_rows_spec.rb",
    "spec/legacy_watirspec/table_spec.rb",
    "spec/legacy_watirspec/tables_spec.rb",
    "spec/legacy_watirspec/text_field_spec.rb",
    "spec/legacy_watirspec/text_fields_spec.rb",
    "spec/legacy_watirspec/ul_spec.rb",
    "spec/legacy_watirspec/uls_spec.rb",
    "spec/legacy_watirspec/watir_compatibility_spec.rb",
    "spec/legacy_watirspec/watirspec_helper.rb",
    "spec/new_watirspec/browser_spec.rb",
    "spec/new_watirspec/clipboard_spec.rb",
    "spec/new_watirspec/collection_spec.rb",
    "spec/new_watirspec/element_spec.rb",
    "spec/new_watirspec/guards.rb",
    "spec/new_watirspec/keys_spec.rb",
    "spec/new_watirspec/preferences_spec.rb",
    "spec/new_watirspec/screenshot_spec.rb",
    "spec/new_watirspec/server.rb",
    "spec/new_watirspec/spatnav_spec.rb",
    "spec/new_watirspec/watirspec_helper.rb",
    "spec/new_watirspec/window_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<bluecloth>, ["= 1.0.1"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<mongrel>, [">= 1.1.5"])
      s.add_development_dependency(%q<sinatra>, [">= 1.1"])
      s.add_development_dependency(%q<rr>, [">= 0"])
      s.add_development_dependency(%q<clipboard>, [">= 0"])
      s.add_runtime_dependency(%q<rspec>, [">= 2.4"])
      s.add_runtime_dependency(%q<inifile>, [">= 0.3"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<deprecated>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bluecloth>, ["= 1.0.1"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<mongrel>, [">= 1.1.5"])
      s.add_development_dependency(%q<sinatra>, [">= 1.1"])
      s.add_development_dependency(%q<rr>, [">= 0"])
      s.add_development_dependency(%q<clipboard>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<bluecloth>, ["= 1.0.1"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<mongrel>, [">= 1.1.5"])
      s.add_dependency(%q<sinatra>, [">= 1.1"])
      s.add_dependency(%q<rr>, [">= 0"])
      s.add_dependency(%q<clipboard>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.4"])
      s.add_dependency(%q<inifile>, [">= 0.3"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.1"])
      s.add_dependency(%q<deprecated>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bluecloth>, ["= 1.0.1"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<mongrel>, [">= 1.1.5"])
      s.add_dependency(%q<sinatra>, [">= 1.1"])
      s.add_dependency(%q<rr>, [">= 0"])
      s.add_dependency(%q<clipboard>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<bluecloth>, ["= 1.0.1"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<mongrel>, [">= 1.1.5"])
    s.add_dependency(%q<sinatra>, [">= 1.1"])
    s.add_dependency(%q<rr>, [">= 0"])
    s.add_dependency(%q<clipboard>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.4"])
    s.add_dependency(%q<inifile>, [">= 0.3"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.1"])
    s.add_dependency(%q<deprecated>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bluecloth>, ["= 1.0.1"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<mongrel>, [">= 1.1.5"])
    s.add_dependency(%q<sinatra>, [">= 1.1"])
    s.add_dependency(%q<rr>, [">= 0"])
    s.add_dependency(%q<clipboard>, [">= 0"])
  end
end

