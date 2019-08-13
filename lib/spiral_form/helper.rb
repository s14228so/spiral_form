# module SpiralForm
#   module Helper
#     def logi(parent,children, grand_children)
#        parent_name = parent.classify
#        children_name = children.classify
#        grandchildren_name = grand_children.classify
#        parent =  parent_name.new(name: params[:parent][:name])
#        parent.save

#        children_id = children + "_id"
#        grand_children_id = grand_children + "_id"
#     # binding.pry
#       if params[:parent][:children]
#          params[:parent][:children].each_with_index do |disc, index|
#            discEntity = children_name.create(name: params[:parent][:children][index][:name], children_id: parent.id)
#            if params[:parent][:children][index][:grand_children]
#               params[:parent][:children][index][:grand_children].each_with_index do |song, i|
#                songEntity =  grandchildren_name.create(name: params[:parent][:children][index][:grand_children][i][:name], grand_children_id: discEntity.id)
#               end
#            end
#          end 
#       end

#     redirect_to item_path(item)
#     end
#   end
# end