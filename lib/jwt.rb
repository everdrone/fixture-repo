require 'jwt'

module Fixture
  class AccessToken
    class << self
      def encode(payload, secret)
        payload.merge!({ iat: Time.now.utc.to_i })
        JWT.encode(payload, secret, 'HS256', { typ: 'JWT' })
      end

      def decode(token, secret)
        begin
          JWT.decode(token, secret, true, { verify_iat: true, algorithm: 'HS256' })
        rescue JWT::InvalidJtiError
          puts 'Invalid token'
          nil
        end
      end
    end
  end
end
