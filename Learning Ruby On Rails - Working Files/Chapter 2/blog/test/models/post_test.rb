require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "post should not save with blank title" do
		post = Post.new
		assert !post.save
	end

	test "user has posts" do
		@user = users(:teri)
		@posts = @user.posts
		assert @posts.count > 0, "There should be at least one post for this user"
		@posts.each do |post|
			assert post.user.eql?(@user), "User should match #{@user}"
		end
	end
end
