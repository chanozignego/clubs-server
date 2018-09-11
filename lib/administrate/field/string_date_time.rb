require "administrate/fields/base"

module Administrate
  module Field
    class StringDateTime < Field::Base

      def to_s
        ( data.is_a?(Date) || data.is_a?(DateTime) || data.is_a?(ActiveSupport::TimeWithZone)) ? data.strftime("%d/%m/%Y %H:%Mhs") : "#{data.to_s}hs"
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