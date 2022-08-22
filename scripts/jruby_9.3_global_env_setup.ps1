#cd E:\Programs\JRuby\Libs\do
#pwd
#where.exe jruby
#cd .\do_openedge\
#mkdir scripts
#cd .\scripts\
#cd ..

#jruby -v
#$env:JRUBY_HOME
#$env:JRUBY_HOME="C:\MipsInternal\Apps\JRuby\jruby-9.3.6.0"
#$Env:PATH=$env:JRUBY_HOME + "\bin;$Env:PATH"
#
#$env:JRE_HOME="C:\Program Files\Java\jre1.8.0_333"
#$Env:PATH=$env:JRE_HOME + "\bin;$Env:PATH"
#
#$env:JDK_HOME="C:\Program Files\Java\jdk1.8.0_331"
#$Env:PATH=$env:JDK_HOME + "\bin;$Env:PATH"
#
##$env:JAVA_HOME="C:\Program Files\Java\jre1.8.0_333"
##$Env:PATH=$env:JAVA_HOME + "\bin;$Env:PATH"
#$env:JAVA_HOME
#$env:JAVA_HOME="C:\Program Files\Java\jdk1.8.0_331"
#$env:PATH
#$env:JAVA_HOME
#
#$env:PATH

#$env:JDK_HOME=/opt/java/latest
#$env:JAVA_HOME=${JDK_HOME}
#$env:PATH=$PATH:${JAVA_HOME}/bin

jruby -v
jruby -w -S gem install naether -v '0.15.8' --source 'http://rubygems.org/'

jruby -S gem update did_you_mean
jruby -S gem update rake
jruby -S gem update minitest
jruby -S gem update logger
jruby -S gem update json
jruby -S gem update fileutils
jruby -S gem update bundler

jruby -S gem list