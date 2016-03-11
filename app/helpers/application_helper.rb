module ApplicationHelper
  def s3_image_path(filename)
    "https://s3-eu-west-1.amazonaws.com/le-wagon-first-try/uploads/#{filename}"
  end
end
