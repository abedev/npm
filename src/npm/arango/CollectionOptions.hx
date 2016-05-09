package npm.arango;

typedef CollectionOptions = {
  /**
  The maximal size of a journal or datafile in bytes. The value must be at least 1048576 (1 MiB). (The default is a configuration parameter)
  **/
  ?journalSize : Float,
  ?keyOptions : {
    /**
    if set to true, then it is allowed to supply own key values in the _key attribute of a document. If set to false, then the key generator will solely be responsible for generating keys and supplying own key values in the _key attribute of documents is considered an error.
    **/
    ?allowUserKeys : Bool,
    /**
    specifies the type of the key generator. The currently available generators are traditional and autoincrement.
    **/
    ?type : String,
    /**
    increment value for autoincrement key generator. Not used for other key generator types.
    **/
    ?increment : Int,
    /**
    Initial offset value for autoincrement key generator. Not used for other key generator types.
    **/
    ?offset : Int
  },
  /**
  The name of the collection.
  **/
  name : String,
  /**
  If true then the data is synchronized to disk before returning from a document create, update, replace or removal operation. (default: false)
  **/
  ?waitForSync : Bool,
  /**
  whether or not the collection will be compacted (default is true)
  **/
  ?doCompact : Bool,
  /**
  If true then the collection data is kept in-memory only and not made persistent. Unloading the collection will cause the collection data to be discarded. Stopping or re-starting the server will also cause full loss of data in the collection. Setting this option will make the resulting collection be slightly faster than regular collections because ArangoDB does not enforce any synchronization to disk and does not calculate any CRC checksums for datafiles (as there are no datafiles). This option should therefore be used for cache-type collections only, and not for data that cannot be re-created otherwise. (The default is false)
  **/
  ?isVolatile : Bool,
  /**
  (The default is [ "_key" ]): in a cluster, this attribute determines which document attributes are used to determine the target shard for documents. Documents are sent to shards based on the values of their shard key attributes. The values of all shard key attributes in a document are hashed, and the hash value is used to determine the target shard. Note: Values of shard key attributes cannot be changed once set. This option is meaningless in a single server setup.
  **/
  ?shardKeys : Array<String>,
  /**
  (The default is 1): in a cluster, this value determines the number of shards to create for the collection. In a single server setup, this option is meaningless.
  **/
  ?numberOfShards : Int,
  /**
  If true, create a system collection. In this case collection-name should start with an underscore. End users should normally create non-system collections only. API implementors may be required to create system collections in very special occasions, but normally a regular collection will do. (The default is false)
  **/
  ?isSystem : Bool,
  /**
  The type of the collection to create. The following values for type are valid:
  type:
  2: document collection (default)
  3: edges collection
  **/
  ?type : Int,
  /**
  The number of buckets into which indexes using a hash table are split. The default is 16 and this number has to be a power of 2 and less than or equal to 1024. For very large collections one should increase this to avoid long pauses when the hash table has to be initially built or resized, since buckets are resized individually and can be initially built in parallel. For example, 64 might be a sensible value for a collection with 100 000 000 documents. Currently, only the edge index respects this value, but other index types might follow in future ArangoDB versions. Changes (see below) are applied when the collection is loaded the next time.
  **/
  ?indexBuckets : Int
}
