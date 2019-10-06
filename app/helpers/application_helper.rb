module ApplicationHelper
    def login_helper
        if current_user.is_a?(GuestUser)
            (link_to "Signup", new_user_registration_path)+"<br>".html_safe+(link_to "Login", new_user_session_path)
        else
            link_to "Logout", destroy_user_session_path, method: :delete
        end
    end

    def source_helper(layout_name)
        if session[:source]
           greeting = "#{layout_name}: Thanks for visiting me from #{session[:source]}"
           content_tag( :h4, greeting, class:"source-class") 
        end
    end
    def copyright_generator
        EliassenViewTool::Renderer.copyright 'Torstein Eliassen', 'All rights reserved'
    end
end
