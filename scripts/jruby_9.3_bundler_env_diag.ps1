
jruby -v
jruby -w -S Bundle exec jruby -e 'puts ''----'';puts ''JRuby with bundle default LOAD_PATH= '';puts $LOAD_PATH;puts ''----'''


more .\.bundle\config


jruby -S bundle list
jruby -S bundle env