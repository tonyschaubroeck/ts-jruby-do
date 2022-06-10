cd E:\Programs\JRuby\Libs\do
pwd
where.exe jruby
cd .\do_openedge\
#mkdir scripts
#cd .\scripts\
#cd ..
jruby -v
$env:JRUBY_HOME
$env:JRUBY_HOME="C:\MipsInternal\Apps\JRuby\jruby-9.3.4.0"
$Env:PATH=$env:JRUBY_HOME + "\bin;$Env:PATH"

$env:JRE_HOME="C:\Program Files\Java\jre1.8.0_333"
$Env:PATH=$env:JRE_HOME + "\bin;$Env:PATH"

$env:JDK_HOME="C:\Program Files\Java\jdk1.8.0_311"
$Env:PATH=$env:JDK_HOME + "\bin;$Env:PATH"

#$env:JAVA_HOME="C:\Program Files\Java\jre1.8.0_333"
#$Env:PATH=$env:JAVA_HOME + "\bin;$Env:PATH"
$env:JAVA_HOME
$env:JAVA_HOME="C:\Program Files\Java\jdk1.8.0_311"
$env:PATH
$env:JAVA_HOME

$env:PATH

#$env:JDK_HOME=/opt/java/latest
#$env:JAVA_HOME=${JDK_HOME}
#$env:PATH=$PATH:${JAVA_HOME}/bin

jruby -v
jruby -w -S gem install naether -v '0.15.8' --source 'http://rubygems.org/'
jruby -w -S bundle config set --local path 'vendor/bundle-jruby-9.3'
dir
more .\.bundle\config
more .\Gemfile
jruby -w -S bundle install
jruby -S bundle list
jruby -S bundle env