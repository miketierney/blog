# Init HAML
Haml.init_rails(binding)

Sass::Plugin.options[:template_location] = "./app/sass"

if ::Rails.env == 'development'
  Sass::Plugin.options[:cache] = false
  # enable usage of the FireSass Firebug extension
  Sass::Plugin.options[:debug_info] = true
  Sass::Plugin.options[:always_check] = true
  Sass::Plugin.options[:style] = :expanded
end

if ::Rails.env == 'production'
  Sass::Plugin.options[:style] = :compressed
  Sass::Plugin.options[:quiet] = true # no warnings in production
end