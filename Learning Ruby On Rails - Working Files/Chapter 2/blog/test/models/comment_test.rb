require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "comments are later than post" do
		Comment.all.each do |comment|
			assert comment.created_at > comment.post.created_at, "Comment date should be later than its post for comment #{comment}"
		end
	end
end
