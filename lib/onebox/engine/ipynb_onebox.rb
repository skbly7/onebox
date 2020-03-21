# frozen_string_literal: true

module Onebox
  module Engine
    class IpynbOnebox
      include Engine
      include LayoutSupport

      matches_regexp(/^(https?:)?\/\/.*\.ipynb(\?.*)?$/i)
      always_https

      private

      def data
        result = { link: link }
        result
      end

      rescue
        nil
      end
    end
  end
end
