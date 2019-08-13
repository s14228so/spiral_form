module SpiralForm
  module ViewHelper
    def spiral_form(token)
       content_tag(:form, "", id: "spiral")  do 
          concat content_tag(:input,"", name: "authenticity_token", type: "hidden", value: token)
       end
    end
  end
end