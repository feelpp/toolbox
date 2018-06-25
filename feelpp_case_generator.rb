#!/usr/bin/ruby

require 'Liquid'
require 'optparse'

options = {}
optparse = OptionParser.new do|opts|
  # Set a banner, displayed at the top
  # of the help screen.
  opts.banner = "Usage: gencase.rb [options]  ..."
  # Define the options, and what they do
  options[:verbose] = false
  opts.on( '-v', '--verbose', 'Output more information' ) do
    options[:verbose] = true
  end
  options[:force] = false
  opts.on( '-f', '--force', 'Force file generation' ) do
    options[:force] = true
  end
  options[:case_shortname] = "rotating-winch"
  opts.on( '-s', '--shortname STRING', 'set case short name' ) do|short|
    options[:case_shortname] = short
  end
  options[:case_name] = "Rotating Winch"
  opts.on( '-n', '--name STRING', 'set case name' ) do|title|
    options[:case_name] = title
  end
  options[:case_toolbox] = "csm"
  opts.on( '-t', '--toolbox STRING', 'set toolbox' ) do|toolbox|
    options[:case_toolbox] = toolbox
  end
  options[:case_cfg] = "rotating-winch"
  opts.on( '-c', '--cfg STRING', 'set toolbox cfg file' ) do|cfg|
    options[:case_cfg] = cfg
  end
  options[:case_json] = "rotating-winch"
  opts.on( '-j', '--json STRING', 'set toolbox json file' ) do|json|
    options[:case_json] = json
  end
  # This displays the help screen, all programs are
  # assumed to have this option.
  opts.on( '-h', '--help', 'Display this screen' ) do
    puts opts
    exit
  end
end
# Parse the command-line. Remember there are two forms
# of the parse method. The 'parse' method simply parses
# ARGV, while the 'parse!' method parses ARGV and removes
# any options found there, as well as any parameters for
# the options. What's left is the list of files to resize.
optparse.parse!
puts "Being verbose" if options[:verbose]
puts "Being quick" if options[:quick]
puts "Generate  #{options[:case_shortname]} with full name #{options[:case_name]} " if options[:case_shortname]
case_shortname = "#{options[:case_shortname]}"
case_name = "#{options[:case_name]}"
case_toolbox = "#{options[:case_toolbox]}"
case_cfg = "#{options[:case_cfg]}"
case_json = "#{options[:case_json]}"

toolbox_apps={ "csm" => "solid", "cfd" => "fluid", "heat" => "heat", "heatfluid" => "heatfluid",
               "thermoelectric" => "thermoelectric", "fsi" => "fsi" }
case_toolbox_app = toolbox_apps[case_toolbox]
#ARGV.each do|f|
#  puts "Generating #{f}..."
#  sleep 0.5
#end

@template = Liquid::Template.parse(File.read("contribute/modules/ROOT/pages/templates/case.adoc.in"))
system "mkdir","-p","cases/modules/#{case_toolbox}/pages/#{case_shortname}"
casedoc="cases/modules/#{case_toolbox}/pages/#{case_shortname}/README.adoc"
if File.exist?("#{casedoc}") == false || options[:force]
     File.write("#{casedoc}", @template.render(
             "case_shortname" => "#{case_shortname}",
             "case_name" => "#{case_name}",
             "case_toolbox" => "#{case_toolbox}",
             "case_toolbox_app" => "#{case_toolbox_app}",
             "case_cfg" => "#{case_cfg}",
             "case_json" => "#{case_json}"
           ))
end
