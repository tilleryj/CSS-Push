require File.join(File.dirname(__FILE__), "..", "lib", "css_push")

ActionView::Base.send(:include, CSSPush::PushHelper)

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :juggernaut => ['juggernaut/swfobject', 'juggernaut/juggernaut', 'juggernaut/css_push']
