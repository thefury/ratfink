namespace :ratfink do
  desc "Initialize ratfink"
  task :init do
    ratfink_dir = Rails.root.join('lib','diagnostics')

    print "creating #{ratfink_dir}... "

    if Dir.exist?(ratfink_dir)
      puts "already exists"
      exit
    end

    Dir.mkdir(Rails.root.join('lib','diagnostics'))
    puts "OK"
  end
end
 
