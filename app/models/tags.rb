require 'data_mapper'
require 'dm-postgres-adapter'

class Tags
  include DataMapper::Resource

  property :id,     Serial
  property :tags,    String
end
