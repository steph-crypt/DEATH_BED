module UsersHelper
  def avatar_for(user)
    if user.avatar?
      cl_image_tag(@user.avatar)
    else
      image_tag "skull.png"
    end
  end
end
