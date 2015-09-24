require "wordpress/ostruct"
require "wordpress/object/attachment"
require "wordpress/object/attachments"

module Wordpress::API
  module Attachments
    def get_attachment(site, attachment_id, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:get, "/rest/v1.1/sites/#{site}/media/#{attachment_id}", params)) do |json|
        Wordpress::Object::Attachment.new(self, json)
      end
    end

    def update_attachment(site, attachment_id, data, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/media/#{attachment_id}", params, data)) do |json|
        Wordpress::Object::Attachment.new(self, json)
      end
    end

    def create_attachment(site, data, params = {})
      # validate_keys! params, [:context] + default_keys
      exec_api(Wordpress::Request.new(:post, "/rest/v1.1/sites/#{site}/media/new", params, data)) do |json|
        Wordpress::Object::Attachments.new(self, json)
      end
    end
  end
end
