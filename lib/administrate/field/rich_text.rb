require "administrate/fields/base"

module Administrate
  module Field
    class RichText < Field::Base

      def to_s
        data
      end

      def truncate
        data.to_s[0...truncation_length]
      end

      private

        def truncation_length
          options.fetch(:truncate, 50)
        end
      
    end
  end
end