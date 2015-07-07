  class AddContribExtensions < ActiveRecord::Migration
    def up
      execute 'CREATE EXTENSION pg_trgm;'
      execute 'CREATE EXTENSION fuzzystrmatch;'
    end
  end