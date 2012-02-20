# Wirble is a plugin to colorize your irb, it's installed from a gem (gem install -y wirble)
require 'rubygems'
begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

# autoindent of code while typing it
IRB.conf[:AUTO_INDENT]=true

# Log to STDOUT if in Rails && use HIRB if available
begin
  require 'hirb'
  Hirb.enable
rescue LoadError => err
  warn "No Hirb: #{err}"
end

require "awesome_print"

unless IRB.version.include?('DietRB')
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
else # MacRuby
  IRB.formatter = Class.new(IRB::Formatter) do
    def inspect_object(object)
      object.ai
    end
  end.new
end