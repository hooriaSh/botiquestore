module API
	module V1
		class Items < Grape::API
			version 'v1'
			format :json

			resource :items   do  # items is a name in url
				#index endpoint to get all items
				desc "Return list of all Items"
				get do 
					Item.all 
				end

				# Show endpoint to a specific Item
				desc "Return a specific item"
				get ':id' do
					Item.find_by_id(params[:id])
				end

				#Show endpoint to get items of tax greater than 200
				desc  "Return items which have tax greater than 200"
				get '/tax' do
					Item.where('price > 200.00')
				end
			end
		end
	end
end