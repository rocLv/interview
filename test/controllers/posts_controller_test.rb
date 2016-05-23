require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @post = posts(:post1)
    @post.save
  end

  def teardown
    @post.destroy
    @post = nil
  end

  test '#index' do
    get posts_url
    assert_response :success
    assert_select 'a', text: @post.title
  end

  test '#show' do
    get post_url(@post)
    assert_response :success
    assert_select 'h2', @post.title
    assert_select 'p', @post.body
  end
end
