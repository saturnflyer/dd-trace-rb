# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/appraisal/all/appraisal.rbi
#
# appraisal-2.4.0

module Appraisal
end
module Appraisal::Utils
  def self.bundler_version; end
  def self.format_arguments(arguments); end
  def self.format_hash_value(key, value); end
  def self.format_string(object, enclosing_object = nil); end
  def self.join_parts(parts); end
  def self.prefix_path(path); end
  def self.support_parallel_installation?; end
end
class Appraisal::Dependency
  def for_dup; end
  def formatted_output(output_requirements); end
  def gem_name; end
  def initialize(name, requirements); end
  def name; end
  def no_requirements?; end
  def path_prefixed_requirements; end
  def requirements; end
  def requirements=(arg0); end
  def to_s; end
end
class Appraisal::DependencyList
  def add(name, requirements); end
  def for_dup; end
  def initialize; end
  def remove(name); end
  def to_s; end
end
class Appraisal::BundlerDSL
  def dependencies; end
  def dependencies_entry; end
  def dependencies_entry_for_dup; end
  def for_dup; end
  def gem(name, *requirements); end
  def gemspec(options = nil); end
  def gemspec_entry; end
  def gemspec_entry_for_dup; end
  def git(source, options = nil, &block); end
  def git_source(source, &block); end
  def git_sources=(arg0); end
  def gits_entry; end
  def gits_entry_for_dup; end
  def group(*names, &block); end
  def groups_entry; end
  def groups_entry_for_dup; end
  def indent(string); end
  def initialize; end
  def path(source, options = nil, &block); end
  def paths_entry; end
  def paths_entry_for_dup; end
  def platform(*names, &block); end
  def platforms(*names, &block); end
  def platforms_entry; end
  def platforms_entry_for_dup; end
  def remove_gem(name); end
  def ruby(ruby_version); end
  def ruby_version_entry; end
  def ruby_version_entry_for_dup; end
  def run(&block); end
  def source(source, &block); end
  def source_blocks_entry; end
  def source_blocks_entry_for_dup; end
  def source_entry; end
  def source_entry_for_dup; end
  def substitute_git_source(requirements); end
  def to_s; end
end
class Appraisal::Gemfile < Appraisal::BundlerDSL
  def dup; end
  def load(path); end
  def run(definitions); end
end
class Appraisal::Command
  def announce; end
  def command; end
  def command_as_string; end
  def command_starting_with_bundle(original_command); end
  def command_starts_with_bundle?(original_command); end
  def ensure_bundler_is_available; end
  def env; end
  def gemfile; end
  def initialize(command, options = nil); end
  def original_env; end
  def restore_env; end
  def run; end
  def unset_bundler_env_vars; end
  def with_clean_env; end
end
class Appraisal::Appraisal
  def bundle_options(options); end
  def check_command; end
  def clean_name; end
  def gem(*args); end
  def gemfile; end
  def gemfile_name; end
  def gemfile_path; end
  def gemfile_root; end
  def gemspec(options = nil); end
  def git(*args, &block); end
  def git_source(*args, &block); end
  def group(*args, &block); end
  def initialize(name, source_gemfile); end
  def install(options = nil); end
  def install_command(options = nil); end
  def lockfile_path; end
  def name; end
  def path(*args, &block); end
  def platforms(*args, &block); end
  def project_root; end
  def relative_gemfile_path; end
  def relativize; end
  def remove_gem(*args); end
  def ruby(*args); end
  def source(*args, &block); end
  def update(gems = nil); end
  def update_command(gems); end
  def write_gemfile; end
end
class Appraisal::AppraisalsNotFound < StandardError
  def message; end
end
class Appraisal::AppraisalFile
  def appraisals; end
  def appraise(name, &block); end
  def each(&block); end
  def gemfile; end
  def initialize; end
  def path; end
  def run(definitions); end
  def self.each(&block); end
end
class Appraisal::Task < Rake::TaskLib
  def initialize; end
end
class Appraisal::Gemspec
  def exported_options; end
  def for_dup; end
  def initialize(options = nil); end
  def options; end
  def to_s; end
end
