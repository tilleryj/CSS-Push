require File.join(File.dirname(__FILE__), "..", "lib", "css_push")

ActionView::Base.send(:include, CSSPush::PushHelper)

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :css_push => ['css_push/swfobject', 'css_push/juggernaut', 'css_push/css_push']
