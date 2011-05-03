module NestedForm
  module NestedAttribute
    module ClassMethods
      # Empty for now...
    end

    module InstanceMethods
      def blueprint= value
        @blueprint = value
      end
      def blueprint
        @blueprint
      end
    end

    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end
  end
end