cd E:/Programs/JRuby/Libs/do/
pwd
where.exe jruby
cd .\data_objects\
#mkdir scripts
#cd .\scripts\
#cd ..
jruby -v
$env:JRUBY_HOME
$env:JRUBY_HOME="C:\MipsInternal\Apps\JRuby\jruby-9.3.4.0"
$Env:PATH = "C:\MipsInternal\Apps\JRuby\jruby-9.3.4.0\bin;$Env:PATH"
$env:PATH
jruby -v
jruby -S ..\bin\jruby-9.3\rake spec
# if you want to compile
# jruby -S .\bin\jruby-9.3\rake compile --trace
# if you want to build and install
# jruby -S ..\bin\jruby-9.3\rake install --trace
# if you want to build only
jruby -S ..\bin\jruby-9.3\rake build_all --trace -X
jruby -S ..\bin\jruby-9.3\rake clean
jruby -S ..\bin\jruby-9.3\rake build_all --trace
dir .\pkg\