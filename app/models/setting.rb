class Setting < ApplicationRecord
  after_save :clear_cache

  def self.get_values(key)
    settings = find_by_sql(['select value from settings where name=?', key])
    values = []
    settings.each do |value|
      values << value.value
    end
    return values
  end

  private
  def clear_cache
    Rails.cache.delete('public_controller')
    Rails.cache.delete('public_action')
  end
end
