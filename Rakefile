namespace :admin do
  desc "Interactively delete all files in /tmp"
  task :clean_tmp do
    Dir["/tmp/*"].each do |f|
      next unless File.file?(f)
      print "Delete #{f}? "
      answer = $stdin.gets
      case answer
      when /^y/
        File.unlink(f)
      when /^q/
        break
      end
    end
  end                                  
end

#1: Declares clean_tmp task
#2: 1
#3: 2
#4: 3
#5: 4
#6: 5
