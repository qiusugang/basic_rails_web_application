class NetCar < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query, page=0, pagesize=10)
    __elasticsearch__.search(
      {
        from: page, size: pagesize,
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

  def self.get_histogram(query, city)
    if city!=nil && city.strip()!=''
      __elasticsearch__.search(
        {
          query: {
            bool: { 
              must: [
                { multi_match: {
                  query: city,
                  type: "most_fields",
                  analyzer: "ik_max_word",
                  operator: "AND",
                  fields: ['city_name^10', 'province_name']
                }}, 
                { match: { car_name: {
                  query: query,
                  analyzer: "ik_max_word",
                  operator: "and"
                }}},
                {
                  range: {
                    created_at: {
                      from: "now/M-5M"
                    }
                  }
                }         
              ]       
            }
          },
          aggs: {
            sales: {
              date_histogram: {
                field: "created_at",
                calendar_interval: "month",
                format: "yyyy-MM"
              }
            }
          }
        }
      )
    else
      __elasticsearch__.search(
        {
          query: {
            bool: { 
              must: [
                { match: { car_name: {
                  query: query,
                  analyzer: "ik_max_word",
                  operator: "and"
                }}} ,
                {
                  range: {
                    created_at: {
                      from: "now/M-5M"
                    }
                  }
                }         
              ]       
            }
          },
          aggs: {
            sales: {
              date_histogram: {
                field: "created_at",
                calendar_interval: "month",
                format: "yyyy-MM"
              }
            }
          }
        }
      )
    end    
  end

  def self.search2(query, city=nil, page=0, pagesize=10)

    if city!=nil && city.strip()!=''
      __elasticsearch__.search(
        {
          from: page, size: pagesize,
          query: {
            bool: { 
              must: [
                { multi_match: {
                  query: city,
                  type: "most_fields",
                  analyzer: "ik_max_word",
                  operator: "AND",
                  fields: ['city_name^10', 'province_name']
                  }                    
                }, 
                { match: { car_name: {
                  query: query,
                  analyzer: "ik_max_word",
                  operator: "and"
                }}}
              ]       
            }
          },
          sort: [ { created_at: {
              order: "desc"
            }},
            "_score"
          ]
        }
      )
    else
      __elasticsearch__.search(
        {
          from: page, size: pagesize,
          query: {
            bool: { 
              must: [
                { match: { car_name: {
                  query: query,
                  analyzer: "ik_max_word",
                  operator: "and"
                }}}
              ]       
            }
          },
          sort: [ { created_at: {
              order: "desc"
            }},
            "_score"
          ]
        }
      )
    end
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
