module Objc
    module Generators
        class Objc_parser
    attr_accessor :class_name, :superclass_name, :strings_array, :numbers_array, :dates_array;
    
    def initialize(class_name)
        @class_name = class_name
        @superclass_name = "NSObject"
        @strings_array = Array.new()
        @numbers_array = Array.new()
        @dates_array = Array.new()
        
        parse
    end
    
    def parse
      object_class = Object.const_get(@class_name)
      
      if (object_class.superclass != ActiveRecord::Base)
        @superclass_name = object_class.superclass.to_s
      end

      hash = object_class.columns
      
      hash.each do |column|
          column_name = column.name.to_s
          column_type = column.type.to_s
          
          if (column_name == 'id' || 
            column_name == 'name')
            column_name = @class_name + '_' + column_name
          end
          
          column_name = column_name.camelize(:lower)
          
          case column_type
          when "string"
            @strings_array << column_name
          when "integer"
            @numbers_array << column_name
          when "datetime"
            @dates_array << column_name
          end
        end
    end
    
    def to_s
        @class_name + " -----------\nstrings_array: " + @strings_array.join(", ") + "\nnumbers_array: " + @numbers_array.join(", ") + "\ndates_array: " + @dates_array.join(", ")
    end
end
    end
end