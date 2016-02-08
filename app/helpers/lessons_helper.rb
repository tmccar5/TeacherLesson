module LessonsHelper
	def recipients_options(chosen_recipient = nil)
  		s = ''
  		User.all.each do |user|
    		s << "<option value='#{user.id}' #{'selected' if user == chosen_recipient}>#{user.email}</option>"
  		end
 		 s.html_safe
	end

	def resource_name
    :user
	end

	def resource
	  @resource ||= User.new
	end

	def devise_mapping
	  @devise_mapping ||= Devise.mappings[:user]
	end	

end
