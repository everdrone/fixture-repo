$LOAD_PATH << '.'

require 'lib/password'
require 'lib/ssh'

password = 'mysecr3tpa$$w0rd'

puts "password:   #{password}"

hash = Fixture::Password.hash(password)

puts "hash:       #{hash}"

decoded = Fixture::Password.decode(hash)

puts "can decode? #{decoded == password}"

keygen = Fixture::Keygen.new

key = keygen.generate('some@mail.com', password)

puts key.ssh_public_key
