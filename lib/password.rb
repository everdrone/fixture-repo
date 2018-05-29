require 'bcrypt'

module Fixture
  class Password
    class << self
      def hash(password)
        BCrypt::Password.create(password)
      end

      def decode(hash)
        BCrypt::Password.new(hash)
      end
    end
  end
end
