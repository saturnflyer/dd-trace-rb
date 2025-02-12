# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/cri/all/cri.rbi
#
# cri-2.15.11

module Cri
end
class Cri::ArgumentList
  def [](key); end
  def each; end
  def initialize(raw_arguments, explicitly_no_params, param_defns); end
  def load; end
  def method_missing(sym, *args, &block); end
  def respond_to_missing?(sym, include_private = nil); end
  include Enumerable
end
class Cri::ArgumentList::ArgumentCountMismatchError < Cri::Error
  def initialize(expected_count, actual_count); end
end
class Cri::Command
  def <=>(other); end
  def add_command(command); end
  def add_defaults(options); end
  def aliases; end
  def aliases=(arg0); end
  def all_opt_defns; end
  def all_opts_as_args; end
  def all_opts_as_args=(arg0); end
  def all_opts_as_args?; end
  def block; end
  def block=(arg0); end
  def command_named(name, hard_exit: nil); end
  def commands; end
  def commands=(arg0); end
  def commands_named(name); end
  def default_subcommand_name; end
  def default_subcommand_name=(arg0); end
  def define_command(name = nil, &block); end
  def description; end
  def description=(arg0); end
  def explicitly_no_params; end
  def explicitly_no_params=(arg0); end
  def explicitly_no_params?; end
  def global_option_definitions; end
  def handle_errors_while; end
  def handle_options(opts); end
  def help(**params); end
  def hidden; end
  def hidden=(arg0); end
  def hidden?; end
  def initialize; end
  def modify(&block); end
  def name; end
  def name=(arg0); end
  def option_definitions; end
  def option_definitions=(arg0); end
  def parameter_definitions; end
  def parameter_definitions=(arg0); end
  def partition(opts_and_args); end
  def run(opts_and_args, parent_opts = nil, hard_exit: nil); end
  def run_this(opts_and_args, parent_opts = nil); end
  def self.define(string = nil, filename = nil, &block); end
  def self.load_file(filename, infer_name: nil); end
  def self.new_basic_help; end
  def self.new_basic_root; end
  def subcommands; end
  def summary; end
  def summary=(arg0); end
  def supercommand; end
  def supercommand=(arg0); end
  def usage; end
  def usage=(arg0); end
end
class Cri::Command::ParserPartitioningDelegate
  def argument_added(argument, parser); end
  def last_argument; end
  def option_added(_key, _value, _parser); end
end
class Cri::Command::CriExitException < StandardError
  def error?; end
  def initialize(is_error:); end
end
class Cri::StringFormatter
  def bold(str); end
  def format_as_command(str, io); end
  def format_as_option(str, io); end
  def format_as_title(str, io); end
  def green(str); end
  def red(str); end
  def to_paragraphs(str); end
  def wrap_and_indent(str, width, indentation, first_line_already_indented = nil); end
  def yellow(str); end
end
class Cri::CommandDSL
  def aliases(*args); end
  def be_hidden; end
  def command; end
  def default_subcommand(name); end
  def description(arg); end
  def flag(short, long, desc, **params, &block); end
  def forbidden(short, long, desc, **params, &block); end
  def initialize(command = nil); end
  def name(arg); end
  def no_params; end
  def opt(short, long, desc, argument: nil, multiple: nil, hidden: nil, default: nil, transform: nil, &block); end
  def option(short, long, desc, argument: nil, multiple: nil, hidden: nil, default: nil, transform: nil, &block); end
  def optional(short, long, desc, **params, &block); end
  def param(name, transform: nil); end
  def required(short, long, desc, **params, &block); end
  def run(&block); end
  def runner(klass); end
  def skip_option_parsing; end
  def subcommand(command = nil, &block); end
  def summary(arg); end
  def usage(arg); end
end
class Cri::CommandDSL::AlreadySpecifiedAsNoParams < Cri::Error
  def initialize(param, command); end
end
class Cri::CommandDSL::AlreadySpecifiedWithParams < Cri::Error
  def initialize(command); end
end
class Cri::CommandRunner
  def arguments; end
  def call; end
  def command; end
  def initialize(options, arguments, command); end
  def options; end
  def run; end
end
class Cri::HelpRenderer
  def append_description(text); end
  def append_option_group(text, name, defs, length); end
  def append_options(text); end
  def append_subcommands(text); end
  def append_summary(text); end
  def append_usage(text); end
  def fmt; end
  def format_opt_defn(opt_defn, length); end
  def initialize(cmd, **params); end
  def length_for_opt_defns(opt_defns); end
  def long_value_postfix_for(opt_defn); end
  def render; end
  def short_value_postfix_for(opt_defn); end
end
class Cri::OptionDefinition
  def argument; end
  def block; end
  def default; end
  def desc; end
  def formatted_name; end
  def hidden; end
  def initialize(short:, long:, desc:, argument:, multiple:, block:, hidden:, default:, transform:); end
  def long; end
  def multiple; end
  def short; end
  def to_h; end
  def transform; end
end
class Cri::Parser
  def add_argument(value); end
  def add_option(option_defn, value, transform: nil); end
  def delegate; end
  def delegate=(arg0); end
  def find_option_value(option_defn, option_key); end
  def gen_argument_list; end
  def handle_dash_option(elem); end
  def handle_dashdash(elem); end
  def handle_dashdash_option(elem); end
  def initialize(arguments_and_options, option_defns, param_defns, explicitly_no_params); end
  def key_for(option_defn); end
  def options; end
  def run; end
  def running?; end
  def stop; end
  def transform_value(option_defn, value); end
  def unprocessed_arguments_and_options; end
end
class Cri::Parser::IllegalOptionError < Cri::Error
end
class Cri::Parser::IllegalOptionValueError < Cri::Error
  def definition; end
  def initialize(definition, value); end
  def value; end
end
class Cri::Parser::OptionRequiresAnArgumentError < Cri::Error
end
class Cri::ParamDefinition
  def initialize(name:, transform:); end
  def name; end
  def transform; end
end
module Cri::Platform
  def self.color?(io); end
  def self.windows?; end
end
class Cri::Error < StandardError
end
class Cri::NotImplementedError < Cri::Error
end
class Cri::NoHelpAvailableError < Cri::Error
end
