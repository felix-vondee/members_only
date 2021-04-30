module PostsHelper
  def display_buttons
    out = ''
    if user_signed_in?
      out << link_to('Add Post', new_post_path)
      out << button_to('logout', destroy_user_session_path, method: :delete)
    else
      out << button_to('Sign in', new_user_session_path)
    end
    out.html_safe
  end
end
