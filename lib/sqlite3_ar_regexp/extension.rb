# borrowed from http://titusd.co.uk/2010/01/31/regular-expressions-in-sqlite/

require 'active_record/connection_adapters/sqlite3_adapter'

module SQLite3ARRegexp
  module Extension
    extend ActiveSupport::Concern

    included do
      def initialize(db, logger, config)
        super
        db.create_function('regexp', 2) do |func, pattern, expression|
          regexp = Regexp.new(pattern.to_s, Regexp::IGNORECASE)
          if expression.to_s.match(regexp)
            func.result = 1
          else
            func.result = 0
          end
        end
      end 
    end 
  end
end
