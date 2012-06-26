require 'generators/objc/base.rb'
require 'generators/objc/model/objc_parser.rb'

module Objc
  module Generators
    class ModelGenerator < Objc::Generators::Base
      argument :records, :type => :array

      def create_view_files
        records.each do |r|
          puts r
            @objc = Objc_parser.new(r)
            
            template "NSObject.h.rb.erb", "objc/#{r}.h"
            template "NSObject.m.rb.erb", "objc/#{r}.m"
        end
      end
    end
  end
end

