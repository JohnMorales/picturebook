require 'spec_helper'

describe "ImageTester" do
  it "will say that a file ending in .jpg is an image" do
    tester = ImageTester.new
    tester.is_image?("IMG_1231.jpg").should be_true
  end
  it "it should confirm that a JPG is also an image" do
    tester = ImageTester.new
    tester.is_image?("IMG_1231.JPG").should be_true
  end
  it "it should confirm that a PNG is also an image" do
    tester = ImageTester.new
    tester.is_image?("IMG_1231.JPG").should be_true
  end
  it "it should confirm that a doc is not an image" do
    tester = ImageTester.new
    tester.is_image?("IMG_1231.doc").should be_false
  end
end
