# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
require 'pry-debugger'
require 'pry'
require 'csv'

desc "Imports CSV files"
task :import_blogs => :environment do
csv_file_path = 'db/blogs.csv'

    CSV.foreach(csv_file_path) do |row|
      Blog.create!({
        :name => row[0],
        :blog_url => row[1],
        :class => row[2]
      })
    end
    Blog.first.destroy
end
