require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'data_mapper_setup'

class Tags
  include DataMapper::Resource

  property :id,     Serial
  property :tags,    String

end

setup_database
