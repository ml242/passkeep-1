
# Load data for use in development environment
if Rails.env.development?

  puts "-------------------------------------------------------------------------------"
  puts " Seeding the database"
  puts "-------------------------------------------------------------------------------"

  require 'factory_girl'
  # Users
  u = FactoryGirl.create(:user, email: 'admin@passkeep.com', super_user: true)
  puts "created #{u.email}"

  FactoryGirl.create(:team, name: "Master", user_ids: [u.id], master: true)
=begin
  p1 = Factory(:project)
  puts "Added a project"

  p2 = Factory(:project)
  puts "Added a project"

  entries = [];
  until entries.length == 837
    begin
      e = Factory(:entry,
                  project_id: rand(2) + 1,
                  tag_list: (entries.length < 84 ? 'foo, bar' : 'Foo bar'))
      puts "Added entry #{entries.length}"
      entries << e
    rescue $e
      puts "error #{$e}"
    end
  end

  Factory(:team, project_ids: [p1.id, p2.id], user_ids: [u.id])
=end
  puts "-------------------------------------------------------------------------------"
  puts " Seeded like a boss."
  puts "-------------------------------------------------------------------------------"
end
