module ApplicationHelper

	def nav_items
	  	[
			{
			 displaytext: 'Companies',
			 controllername: 'companies',
			 linkurl: companies_path
			},
			{
			 displaytext: 'Projects',
			 controllername: 'projects',
			 linkurl: projects_path
			},
			{
			 displaytext: 'Works',
			 controllername: 'works',
			 linkurl: works_path
			}
		]
	end

	def display_nav_item(displaytext, controllername, linkurl)
		raw("<li#{controller_name == controllername ? ' class="active"' : ''}>#{link_to displaytext, linkurl}</li>")
	end

	def user_logged_in_msg
		str = ''
		str += '<div class="userloggedin">'
		if user_signed_in?
			str += "<p id=""user_info"">#{current_user}<br>#{link_to('Logout', destroy_user_session_path, :method => :delete)}</p>"
		else
			str += "<p id=""user_info"">#{link_to('Login', new_user_session_path)} | #{link_to('Register', new_user_registration_path)}</p>"
		end
		str += '</div>'
		raw(str)
	end

	def sidebar
		unless ['sessions', 'registrations'].include?(controller_name)
			index_title = "All #{controller_name.capitalize}"
			index_path = "#{controller_name}_path"
			new_title = "New #{controller_name.singularize.capitalize}"
			new_path = "new_#{controller_name.singularize}_path"
			raw("<ul>
				<li>#{link_to index_title, eval(index_path)}</li>
				<li>#{link_to new_title, eval(new_path)}</li>
			</ul>")
		end
	end
end
