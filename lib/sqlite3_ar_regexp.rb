require 'active_record'
require 'active_record/connection_adapters/sqlite3_adapter'
require 'sqlite3_ar_regexp/extension'
require 'sqlite3_ar_regexp/version'

ActiveRecord::ConnectionAdapters::SQLite3Adapter.send(:include, SQLite3ARRegexp::Extension)
