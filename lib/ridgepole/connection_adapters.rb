# frozen_string_literal: true

module Ridgepole
  class ConnectionAdapters
    def self.mysql?
      defined?(ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter) && ActiveRecord::Base.connection.is_a?(ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter)
    end

    def self.postgresql?
      defined?(ActiveRecord::ConnectionAdapters::PostgreSQLAdapter) && ActiveRecord::Base.connection.is_a?(ActiveRecord::ConnectionAdapters::PostgreSQLAdapter)
    end

    def self.sqlite3?
      defined?(ActiveRecord::ConnectionAdapters::SQLite3Adapter) && ActiveRecord::Base.connection.is_a?(ActiveRecord::ConnectionAdapters::SQLite3Adapter)
    end
  end
end
