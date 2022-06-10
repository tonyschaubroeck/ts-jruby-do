begin
  require 'bundler/setup' # Set up gems listed in the Gemfile
  # gem 'rake-compiler', '~>0.7'
  require 'rake/javaextensiontask'

  def gemspec
    @clean_gemspec ||= Gem::Specification::load(File.expand_path('../../do_jdbc.gemspec', __FILE__))
  end

  Rake::JavaExtensionTask.new('do_jdbc_internal', gemspec) do |ext|
    ext.ext_dir = 'src/main/java'
    ext.name = 'do_jdbc_internal'
    ext.lib_dir = 'lib'                            # put binaries into this folder.
    ext.tmp_dir = 'tmp'                            # temporary folder used during compilation.
    #ext.source_pattern = 'src/main/java/**/*.java' # monitor file changes to allow simple rebuild.
    ext.source_pattern = '**/*.java'
    ext.source_version = '1.8'                     # The JRE version that source code requires to compile. Def: 1.6.
    ext.target_version = '1.8'                     # The oldest JRE version you want to support. Default: 1.6
    # ext.gem_spec = spec
  end

  # do_jdbc is only available for JRuby: the normal behaviour of rake-compiler
  # is to only chain 'compile:PLATFORM' tasks to 'compile' where PLATFORM is the
  # platform of the current interpreter (i.e. 'compile:java' to 'compile' only
  # if running on JRuby). However, we always want to compile for Java, even if
  # running from MRI.
  task 'compile:do_jdbc_internal' => ['compile:do_jdbc_internal:java']
  task 'compile' => ['compile:java']

rescue LoadError
  warn "To compile, install rake-compiler (gem install rake-compiler)"
end
