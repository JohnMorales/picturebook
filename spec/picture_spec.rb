require 'spec_helper'

describe "Picture" do
  it "Will store file path" do
    p = Picture.new
    p.file_path = "/Users/fake_user/image.jpg"
    p.save!
    Picture.all.count.should eql(1)
  end
end
