desc "scrape latest ids and images"
task :scrape => :environment do
  require 'mechanize'
  agent = Mechanize.new
  HOST = 'http://icanimalcenter.org/'

  {
    '1' => 'Dog',
    '2' => 'Cat',
    '3' => 'Other/Exotic'
  }.each do |category_id, category_name|
    agent.get("#{HOST}animals.php?f=#{category_id}").links.each do |animal_link|
      unless animal_link.text.empty?
        animal_id = animal_link.href.split('=').last
        images = agent.get("#{HOST}animal.php?id=#{animal_id}").images_with(:src => /animalImages/)
        images.map {|image| image.src.split('_')[1]}.sort.map do |image_id|
          SourceImage.find_or_create_by_url({
            :category     => category_name,
            :external_id  => animal_id,
#            :name         => animal_link.text,
            :url          => "#{HOST}animalImages/#{animal_id}_#{image_id}_f.jpg"
          })
        end
      end
    end
  end

end
