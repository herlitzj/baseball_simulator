#to delete table: TableName.destroy_all
#to reset DB table ID: ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<table_name>'")

require 'csv'
namespace :db do
  task :import_csv => :environment do
    CSV.foreach("db/park.csv", :headers => true) do |row|
      Park.create!(row.to_hash)
    end
  end
end

# to execute: bundle exec rake db:import_csv