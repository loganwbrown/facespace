desc "Sends an email to all users."
task :send_newsletter => :environment do
  User.find_each do |user|
    UserMailer.newsletter(user).deliver
  end
end