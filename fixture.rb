$LOAD_PATH << '.'

require 'lib/password'

password = 'mysecr3tpa$$w0rd'

puts "password:   #{password}"

hash = Fixture::Password.hash(password)

puts "hash:       #{hash}"

decoded = Fixture::Password.decode(hash)

puts "can decode? #{decoded == password}"
