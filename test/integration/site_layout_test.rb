require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

 
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", assistance_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", faq_path
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", team_path
    assert_select "a[href=?]", who_path
  end
end