require "rubygems"
require 'hirb-unicode'
Hirb.enable

begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

require "ap"
IRB::Irb.class_eval do
  def output_value
    ap @context.last_value
  end
end