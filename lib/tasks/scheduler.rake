task :get_zones => :environment do |t|
  # cat com.zone.example.txt | cut -f1 -d ' ' | sort -u | egrep '^[A-Z0-9]([A-Z0-9\-]{0,61}[A-Z0-9])?$' > com.zone.clean.txt
  File.foreach('com.zone.clean.txt') do |x|
    dmn = Domain.create( word: x.downcase )
    puts dmn
  end
  
end
