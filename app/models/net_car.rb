class NetCar < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            type: "most_fields",
            analyzer: "ik_max_word",
            operator: "AND",
            fields: ['city_name^10', 'car_name', 'province_name']
          }
        },
        highlight: {
          pre_tags: ['<em>'],
          post_tags: ['</em>'],
          fields: {
            city_name: {},
            province_name: {},
            car_name: {}
          }
        }
      }
    )
  end

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :city_name, analyzer: 'ik_max_word'
      indexes :province_name, analyzer: 'ik_max_word'
      indexes :car_name, analyzer: 'ik_max_word'
      indexes :created_at, type: "date" #, index: "not_analyzed"
      indexes :mileage, type: 'integer'
      indexes :price, type: 'integer'
      indexes :purchase_date, type: "date" #, index: "not_analyzed"
      indexes :offline_at, type: "date" #, index: "not_analyzed"
      indexes :seller_name, analyzer: 'ik_max_word'
      indexes :liter, type: "keyword"
      indexes :gear_type,  analyzer: 'ik_max_word'
    end
  end

end
