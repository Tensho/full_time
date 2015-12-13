module FullTime
  module DSL
    def dsl_attr_accessor(*attributes)
      attributes.each do |attr|
        define_method attr do |*args|
          case args.size
            when 0 then instance_variable_get("@#{attr}")
            when 1 then instance_variable_set("@#{attr}", args.first)
            else raise ArgumentError, "wrong number of arguments (#{args.size} for 0..1)"
          end
        end
      end
    end
  end
end
