require 'spec_helper'

describe "Picture" do
  it "Will store file path" do
    picture_count = Picture.all.count
    p = Picture.new
    p.file_path = "/Users/fake_user/image.jpg"
    p.save!
    Picture.all.count.should eql(picture_count + 1)
  end
end
