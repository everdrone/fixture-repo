require 'sshkey'

module Fixture

  class Keygen

    attr_reader :key

    def initialize
      @key = nil
    end

    def generate(comment, passphrase)
      @key = SSHKey.generate(
        type: "RSA",
        bits: 2048,
        comment: comment,
        passphrase: passphrase
      )
    end

    end
  end

end
