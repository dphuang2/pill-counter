require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

    test "layout links" do
        # verify signup page
        get signup_path
        assert_response :success
        assert_select "title", full_title("Sign up") 

        get root_path
        assert_template 'static_pages/home'
        assert_select "a[href=?]", root_path, count: 2
        assert_select "a[href=?]", help_path
        assert_select "a[href=?]", about_path
        assert_select "a[href=?]", contact_path
    end
end
