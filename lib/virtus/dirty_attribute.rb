require 'virtus'
require_relative 'dirty_attribute/session'

module Virtus
  # == Dirty Tracking
  #
  # Dirty Tracking is an optional module that you include only if you need it.
  module DirtyAttribute
    module ClassMethods
      def attribute(name, type, options = {})
        _create_writer_with_dirty_tracking(name)
        super
      end

      private
      def _create_writer_with_dirty_tracking(name)
        class_eval <<-RUBY, __FILE__, __LINE__ + 1
          def #{name}=(new_regular_object)
            prev_object = #{name}
            new_virtus_object = super

            if attribute_dirty?(:#{name}) && original_attributes[:#{name}] == new_virtus_object
              attribute_clean!(:#{name})
            elsif prev_object != new_virtus_object
              unless original_attributes.key?(:#{name})
                original_attributes[:#{name}] = prev_object
              end

              attribute_dirty!(:#{name}, new_regular_object)
            end

            new_virtus_object
          end
        RUBY
      end
    end

    module InitiallyClean
      def initialize(*args)
        super(*args)
        clean!
      end
    end

    def self.included(base)
      base.extend ClassMethods
    end

    def dirty?
      dirty_session.dirty?
    end

    def clean?
      !dirty?
    end

    def attribute_dirty?(name)
      dirty_session.dirty?(name)
    end

    def clean!
      dirty_session.clean!
    end

    def dirty_attributes
      dirty_session.dirty_attributes
    end

    def original_attributes
      dirty_session.original_attributes
    end

    private
    def attribute_dirty!(name, value)
      dirty_session.dirty!(name, value)
    end

    def attribute_clean!(name)
      dirty_session.attribute_clean!(name)
    end

    def dirty_session
      @_dirty_session ||= Session.new(self)
    end
  end
end
