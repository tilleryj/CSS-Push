
if defined?(CSSPush)
  CSSPush.install
else
  module CSSPush
    module PushHelper
      def pushify *args
        ""
      end
    end
  end
  ActionView::Base.send(:include, CSSPush::PushHelper)
end


