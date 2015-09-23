require "wordpress/ostruct"
require "wordpress/object/media"

module Wordpress::API
  module Media
    # def get_post(site, post_id, params = {})
    #   validate_keys! params, [:context] + default_keys
    #   exec_api(Wordpress::Request.new(:get, "/rest/v1.1/sites/#{site}/posts/#{post_id}", params)) do |json|
    #     Wordpress::Object::Post.new(self, json)
    #   end
    # end

    # def update_post(site, post_id, data, params = {})
    #   validate_keys! params, [:context] + default_keys
    #   exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/posts/#{post_id}", params, data)) do |json|
    #     Wordpress::Object::Post.new(self, json)
    #   end
    # end

    def create_media(site, data, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/media/new", params, data)) do |json|
        Wordpress::Object::Media.new(self, json)
      end
    end
  end
end
