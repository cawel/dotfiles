class Debug
	def self.invalid_rows_for(klass)
		klass.all.reject{|i| i.valid?}
	end
end

class Object
	# find only the methods not present on an Object instance
	def interesting_methods
		(self.methods - Object.new.methods).sort
	end
end

begin
	require 'rubygems'
	require 'wirble'

	# start wirble (with color)
	Wirble.init
	Wirble.colorize
rescue LoadError => err
	warn "Couldn't load Wirble: #{err}"
end

puts "irbrc file loaded"
