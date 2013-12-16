require 'sidekiq'

class ImageSearcher
  include Sidekiq::Worker
  sidekiq_options :queue => :search_directory

  def perform(directory)
    puts "checking directory #{directory} for images."
    tester = ImageTester.new
    Dir.foreach(directory) { |file|
      if tester.is_image?(file)
        p = Picture.new
        p.file_path = file
        p.save!
      end
    }
  end
end

