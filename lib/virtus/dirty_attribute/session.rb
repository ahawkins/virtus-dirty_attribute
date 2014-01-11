module Virtus
  module DirtyAttribute
    class Session
      attr_reader :subject

      def initialize(subject)
        @subject = subject
      end

      def original_attributes
        @_original_attributes ||= subject.attributes.dup
      end

      def dirty_attributes
        @_dirty_attributes ||= {}
      end

      def dirty!(name, value)
        dirty_attributes[name] = value
      end

      def attribute_clean!(name)
        dirty_attributes.delete name
        original_attributes.delete name
      end

      def dirty?(name = nil)
        name ? dirty_attributes.key?(name) : dirty_attributes.any?
      end

      def clean!
        original_attributes.clear
        dirty_attributes.clear
      end
    end
  end
end
