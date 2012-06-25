require 'generators/ajax/base.rb'
require 'generators/ajax/model/Objc.rb'

module Ajax
  module Generators
    class ModelGenerator < Ajax::Generators::Base
      argument :records, :type => :array

      def create_view_files
        records.each do |r|
          puts r
            @objc = Objc.new(r)
            
            template "NSObject.h.rb.erb", "objc/#{r}.h"
            template "NSObject.m.rb.erb", "objc/#{r}.m"
        end
      end
    end
  end
end

