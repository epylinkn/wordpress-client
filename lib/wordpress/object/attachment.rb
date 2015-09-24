require_relative 'meta_object'

module Wordpress::Object
  class Attachment < MetaObject
    attr_parameter :id, :url, :guid, :post_id, :caption, :description, :alt, :height, :width
    attr_parameter :date, :as => lambda { |c, v| DateTime.iso8601(v) }
    attr_meta_object :site => 'Site'
  end
end
