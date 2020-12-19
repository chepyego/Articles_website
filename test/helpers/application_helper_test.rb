

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,      'Mwembe Tayari online shopping mall'
    assert_equal full_title("Help"), 'Help | Mwembe Tayari online shopping mall'
  end
end