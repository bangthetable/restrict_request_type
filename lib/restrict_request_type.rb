require "restrict_request_type/version"

module RestrictRequestType
  module ClassMethods
    def restrict_request_type(options={})
      defaults = {of: [], to: [:html]}
      options  = defaults.merge options

      before_filter(only: options[:of]) do |controller|
        format = controller.request.format.to_sym
        action = controller.params['action'].to_sym
        handle_request_with_invalid_format if options[:to].exclude?(format)
      end
    end
  end

  module InstanceMethods
    def handle_request_with_invalid_format
      render nothing: true, status: 406
    end
  end
end

module RestrictRequestType
  def self.included(base)
    base.extend RestrictRequestType::ClassMethods
    base.send :include, RestrictRequestType::InstanceMethods
  end
end

