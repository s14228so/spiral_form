
require 'spiral_form/helper'
module SpiralForm
  class Engine < ::Rails::Engine
    isolate_namespace SpiralForm
    initializer 'spiral_form.action_controller_helpers' do
      ActiveSupport.on_load :action_controller do
        include SpiralForm::Helper
      end
    end
  end
end



require 'spiral_form/view_helper'
module SpiralForm
  class Engine < ::Rails::Engine
    isolate_namespace SpiralForm
    initializer 'spiral_form.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include SpiralForm::ViewHelper
      end
    end
  end
end
