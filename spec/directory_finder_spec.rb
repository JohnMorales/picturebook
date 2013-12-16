require_relative '../lib/directory_finder'
require 'sidekiq/testing'

describe "DirectoryFinder" do
  it "will call found_directory for every directory" do
    Dir.mktmpdir { |dir|
      10.times do |i| 
        Dir.mkdir("#{dir}/temp_dir_#{i}")
      end
      finder = DirectoryFinder.new
      finder.should_receive(:found_directory).exactly(10).times
      finder.find dir
    }
  end
  context "found directory" do
    before :each do
      Dir.mktmpdir { |dir|
        2.times do |i| 
          Dir.mkdir("#{dir}/temp_dir_#{i}")
        end
        finder = DirectoryFinder.new
        finder.find dir
      }
    end
   it "will create jobs to scan every directory for images" do
    ImageSearcher.jobs.size.should eql 2
   end
  end
end
