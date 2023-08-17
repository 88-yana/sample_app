[1mdiff --git a/test/integration/site_layout_test.rb b/test/integration/site_layout_test.rb[m
[1mindex 0f7ca64..190be22 100644[m
[1m--- a/test/integration/site_layout_test.rb[m
[1m+++ b/test/integration/site_layout_test.rb[m
[36m@@ -9,5 +9,7 @@[m [mclass SiteLayoutTest < ActionDispatch::IntegrationTest[m
     assert_select "a[href=?]", help_path[m
     assert_select "a[href=?]", about_path[m
     assert_select "a[href=?]", contact_path[m
[32m+[m[32m    get contact_path[m
[32m+[m[32m    assert_select "title", full_title("Contact")[m
   end[m
 end[m
[1mdiff --git a/test/test_helper.rb b/test/test_helper.rb[m
[1mindex eb9aca7..ce397ce 100644[m
[1m--- a/test/test_helper.rb[m
[1m+++ b/test/test_helper.rb[m
[36m@@ -10,6 +10,6 @@[m [mclass ActiveSupport::TestCase[m
 [m
   # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.[m
   fixtures :all[m
[31m-[m
[32m+[m[32m  include ApplicationHelper[m
   # Add more helper methods to be used by all tests here...[m
 end[m
