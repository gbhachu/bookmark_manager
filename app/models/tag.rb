require 'data_mapper'
require 'dm-postgres-adapter'

class Tag
  include DataMapper::Resource

  has n, :links, through: Resource

  storage_names[:default] = 'tag'

  property :id,     Serial
  property :name,   String
end
