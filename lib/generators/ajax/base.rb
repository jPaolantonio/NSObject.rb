require 'rails/generators/named_base'

module Ajax
  module Generators
    class Base < Rails::Generators::Base
      # Automatically sets the source root based on the class name.
      #
      def self.source_root
        @_ajax_source_root ||= begin
          File.expand_path(File.join(File.dirname(__FILE__), generator_name, 'templates')) if generator_name
        end
      end
    end
  end
end

