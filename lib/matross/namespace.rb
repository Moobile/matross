module Matross
  class Namespace
    def initialize(hash)
      hash.each do |key, value|
        singleton_class.send(:define_method, key) {fetch key}
      end
    end

    def get_binding
      binding
    end
  end
end
