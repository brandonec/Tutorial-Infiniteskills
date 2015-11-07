module PostsHelper
	def category_date_author_comments(post)
		raw("<div class=""post_details"">Posted in #{raw(post.categories.map { |c| link_to(c.title, c) }.join(', '))} on #{post.created_at.strftime('%m/%d/%Y')} by #{post.user} | #{link_to(pluralize(post.comments.size, 'Comment'), post_path(post, anchor: 'commentlabel'))}</div>")
	end

	def author_edit_link(post)
		if user_signed_in? && post.user == current_user
			return raw("<div class=""author_edit_post"">#{link_to 'Edit Post', edit_post_path(post)}</div>")
		end
		return ''
	end
end
