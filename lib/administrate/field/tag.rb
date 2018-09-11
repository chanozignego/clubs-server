require "administrate/fields/base"

module Administrate
  module Field
    class Tag < Field::Base

      # To use this field type, you need to have:
      # - a tags in your model, like this:
      #   #your_model.rb
      #   YOUR_TAGS: [option1, option2, option3]
      #   
      # - translations for your options with this format:
      #   #your_model.es-AR.yml
      #   es-AR:
      #     your_model:
      #       your_tag_in_plural: 
      #         option1: Translation1
      #         option2: Translation2
      #         option3: Translation3

      def to_s
        data
      end

      def downcase_model(klass_name)
        klass_name.to_s.underscore
      end

      def tags(klass_name)
        method = attribute.to_s.pluralize.upcase
        string_method = "#{klass_name}::#{method}"
        eval(string_method)
      end

      def self.permitted_attribute(attr, _options = nil)
         { "#{attr}".to_sym => [] }
      end

    end
  end
end