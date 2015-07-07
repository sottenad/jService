class AddPgSearchDmetaphoneSupportFunctions < ActiveRecord::Migration
  def self.up
    say_with_time("Adding support functions for pg_search :dmetaphone") do
      if ActiveRecord::Base.connection.send(:postgresql_version) < 80400
        execute <<-'SQL'
CREATE OR REPLACE FUNCTION unnest(anyarray)
  RETURNS SETOF anyelement AS
$BODY$
SELECT $1[i] FROM
    generate_series(array_lower($1,1),
                    array_upper($1,1)) i;
$BODY$
  LANGUAGE 'sql' IMMUTABLE
        SQL
      end

      execute <<-'SQL'
CREATE OR REPLACE FUNCTION pg_search_dmetaphone(text) RETURNS text LANGUAGE SQL IMMUTABLE STRICT AS $function$
  SELECT array_to_string(ARRAY(SELECT dmetaphone(unnest(regexp_split_to_array($1, E'\\s+')))), ' ')
$function$;
      SQL
    end
  end

  def self.down
    say_with_time("Dropping support functions for pg_search :dmetaphone") do
      execute <<-'SQL'
DROP FUNCTION pg_search_dmetaphone(text);
      SQL

      if ActiveRecord::Base.connection.send(:postgresql_version) < 80400
        execute <<-'SQL'
DROP FUNCTION unnest(anyarray);
        SQL
      end
    end
  end
end
