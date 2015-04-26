#to delete table: TableName.destroy_all
#to reset DB table ID: ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<table_name>'")

require 'csv'
namespace :db do
  task :import_csv => :environment do
    CSV.foreach("db/plays.csv", :headers => true) do |row|
      Play.create!(row.to_hash)
    end
  end
end

# to execute: bundle exec rake db:import_csv