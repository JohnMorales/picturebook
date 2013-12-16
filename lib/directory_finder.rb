# Identify locations where pictures are stored.
# Create local jobs to check those locations at regular intervals.
# Create weekly job to identify new locations
require 'image_searcher'

class DirectoryFinder
  def found_directory(directory)
    ImageSearcher.perform_async directory
  end
  def find(directory)
    Dir["#{directory}/*"].each do |x|
      found_directory x
    end
  end
end
