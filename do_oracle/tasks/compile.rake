begin
  # gem 'rake-compiler', '~>0.7'
  # require 'rake/extensiontask'
  require 'rake/javaextensiontask'

  def gemspec
    @clean_gemspec ||= Gem::Specification::load(File.expand_path('../../do_oracle.gemspec', __FILE__))
  end

  # unless JRUBY
  #   Rake::ExtensionTask.new('do_oracle', gemspec) do |ext|
  #
  #     ext.lib_dir = "lib/#{gemspec.name}"
  #
  #     # automatically add build options to avoid need of manual input
  #     if RUBY_PLATFORM =~ /mswin|mingw/ then
  #     else
  #       ext.cross_compile = false
  #       ext.cross_platform = ['x86-mingw32', 'x86-mswin32-60']
  #     end
  #   end
  # end

  Rake::JavaExtensionTask.new('do_oracle', gemspec) do |ext|
    ext.lib_dir   = "lib/#{gemspec.name}"
    ext.ext_dir   = 'ext-java/src/main/java'
    ext.debug     = ENV.has_key?('DO_JAVA_DEBUG') && ENV['DO_JAVA_DEBUG']
    ext.classpath = '../do_jdbc/lib/do_jdbc_internal.jar;../jdbc_drivers/oracle/ojdbc8.jar'
    ext.java_compiling do |gem|

      # Hack: Unfortunately there is no way to remove a dependency in the
      #       Gem::Specification API.
      gem.dependencies.delete_if { |d| d.name == 'ruby-oci8'}
      gem.add_dependency "do_jdbc", '~> 0.11.1'
    end
    ext.source_version = '1.8'                     # The JRE version that source code requires to compile. Def: 1.6.
    ext.target_version = '1.8'                     # The oldest JRE version you want to support. Default: 1.6
  end

  task 'compile:do_oracle' => ['compile:do_oracle:java']
  task 'compile' => ['compile:java']

rescue LoadError
  warn "To compile, install rake-compiler (gem install rake-compiler)"
end
