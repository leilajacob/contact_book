class LookupController < ApplicationController
  def search
  end

  def results
  	if params[:name] != nil
  		name_array = params[:name].split

  		@results = Contact.where(first_name: name_array[0], last_name: name_array[1], user_id: current_user.id)
  	elsif params[:city] != nil
  		@results = Contact.where(city: params[:city], user_id: current_user.id)
  	end
  end
end
