  class AddContribExtensions < ActiveRecord::Migration[4.2]
    def up
      execute 'CREATE EXTENSION pg_trgm;'
      execute 'CREATE EXTENSION fuzzystrmatch;'
    end
  end