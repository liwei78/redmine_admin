namespace :redmine do
  namespace :admin do
    desc "reset admin account, USE IT UNDER DEVELOPMENT!"
    task :reset => :environment do
      puts "reset begin"
      u = User.find(1)
      u.login    = "admin"
      u.password = "admin"
      u.password_confirmation = "admin"
      u.save
      p u.errors.full_messages
      puts "done. admin is admin"
    end
    
    desc "liwei is admin"
    task :liwei => :environment do
      puts "reset begin"
      u = User.find_by_login("liwei")
      u.admin  = true
      u.save
      p u.errors.full_messages
      puts "done. liwei is admin"
    end
  end
end