require "wordpress/ostruct"
require "wordpress/object/media"

module Wordpress::API
  module Media
    def get_media(site, media_id, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:get, "/rest/v1.1/sites/#{site}/media/#{media_id}", params)) do |json|
        Wordpress::Object::Media.new(self, json)
      end
    end

    def update_media(site, media_id, data, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/media/#{media_id}", params, data)) do |json|
        Wordpress::Object::Media.new(self, json)
      end
    end

    def create_media(site, data, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/media/new", params, data)) do |json|
        Wordpress::Object::Media.new(self, json)
      end
    end
  end
end
