class ImageTester
  def is_image?(file)
    check_by_extension(file)
  end
  def check_by_extension(file)
    file =~ /\.(png|jpg|jpeg|gif|bmp)/i
  end
end
