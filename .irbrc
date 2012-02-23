def get_invalid(klass)
	klass.all.reject{|i| i.valid?}
end

class Object
	# Return only the methods not present on basic objects
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

# require 'hirb'
# Hirb::View.enable
# Hirb::View.formatter_config

puts "irbrc file loaded"
