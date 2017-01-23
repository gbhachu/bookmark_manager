require 'data_mapper'
require 'dm-postgres-adapter'

class Link

  include DataMapper::Resource

  property :id,       Serial
  property :title,    String
  property :url,      String


end

DataMapper.setup(:default, "postgres://localhost/database_play")
DataMapper.finalize
DataMapper.auto_upgrade!