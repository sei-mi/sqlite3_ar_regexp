require "sqlite3_ar_regexp/extension"
require "sqlite3_ar_regexp/version"

ActiveRecord::ConnectionAdapters::SQLite3Adapter.send(:include, SQLite3ARRegexp::Extension)
