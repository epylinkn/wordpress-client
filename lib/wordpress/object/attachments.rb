require_relative 'array'

module Wordpress::Object
  class Attachments < Array
    attr_array :media, 'Attachment'
  end
end
