task :default => :all

desc "Pruebas unitarias de la clase Racional"
task :all do
  sh "ruby -I. test/Test_Racional.rb"
end

desc "Pruebas aritmeticas de la clase Racional"
task :aritmetic do
  sh "ruby -I. test/Test_Racional.rb -n /aritmetic/"
end

desc "Pruebas de las excepciones de la clase Racional"
task :exceptions do
  sh "ruby -I. test/Test_Racional.rb -n /exceptions/"
end