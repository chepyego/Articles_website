
class StaticPagesControllerTest < ActionDispatch::IntegrationTest


  require 'test_helper'
     def setup
               @base_title = "Mwembe Tayari online shopping mall"
      end
  
  test "shoud get root" do

    get  root_url
    assert_response :success
  end    
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title","Home | #{@base_title}"

  end

  test "should get help" do
    get help_path
    assert_response :success
    #assert_select test presence of particula HTML tag
    assert_select "title","Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title","About | #{@base_title}"

  end
  test "shoud get contact" do
    get contact_path
    assert_response :success
    assert_select "title","Contact | #{@base_title}"
  end

  

end
