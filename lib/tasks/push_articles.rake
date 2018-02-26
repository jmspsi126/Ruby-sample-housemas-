
namespace :articles do

  # RAILS_ENV=production rake articles:push
  desc "push article images (from downloaded Google Drive content) to S3"
  task :push => :environment do
    PublishArticle.csvupload
  end #task
  
end #namespace
