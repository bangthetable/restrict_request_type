require "restrict_request_type/version"

module RestrictRequestType
  module ClassMethods
    def restrict_request_type(options={})
      defaults = {of: [], to: [:html]}
      options  = defaults.merge options

      before_filter do |controller|
        format = controller.request.format.to_sym
        action = controller.params['action'].to_sym

        unless options[:of].include?(action) && options[:to].include?(format)
          render :nothing => true, :status => 406
        end
      end
    end
  end
end

module RestrictRequestType
  def self.included(base)
    base.extend RestrictRequestType::ClassMethods
  end
end

#of: [:show, :index], to: [:json]

