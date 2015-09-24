require_relative 'array'

module Wordpress::Object
  class Attachments < Array
    attr_array :attachments, 'Attachment'
  end
end
