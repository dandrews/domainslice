task :get_zones => :environment do |t|
  # cat com.zone.example.txt | cut -f1 -d ' ' | sort -u | egrep '^[A-Z0-9]([A-Z0-9\-]{0,61}[A-Z0-9])?$' > com.zone.clean.txt
  File.foreach('com.zone.clean.txt') do |x|
    dmn = Domain.create( word: x.downcase )
    puts dmn
  end
  
end

task :load_zones => :environment do |t|

  zone_path = 'zones/'
  skip_files = [ '.', '..', 'all_zones.txt' ]
  Dir.foreach(zone_path) do |item|
    next if skip_files.include? item
    puts item
    zone_file_path = "#{zone_path}#{item}"
    zone = item.split(".")[1]
    counter = 0
    File.foreach(zone_file_path) do |x|
      name = x.downcase.strip
      dmn = DomainName.find_by( name: name )
      if dmn.blank?
        dmn = DomainName.create( name: name )
      end

      unless dmn.tlds.include? zone
        dmn.tlds << zone
        dmn.save
      end

      # puts dmn.inspect
      # counter += 1
      # if counter > 3000
      #   break
      # end

    end
  end
end
