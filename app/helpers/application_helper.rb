module ApplicationHelper
    def login_helper(chosenClass = '')
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, class: chosenClass)+" ".html_safe+(link_to "Login", new_user_session_path, class: chosenClass)
        else
            link_to "Logout", destroy_user_session_path, method: :delete, class: chosenClass
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

    def nav_items
        {"Home": root_path, "About": about_me_path, "Contact": contact_path, "Blog":blogs_path, "Portfolio": portfolios_path}
    end

    def nav_helper style, tag_type
        nav_links = ""
        for name, path in nav_items do
            nav_links += content_tag(tag_type, link_to(name, path), class: "#{style} #{active? path}") 
        end
        nav_links.html_safe
    end
    
    def active? path
        "active" if current_page? path
    end
end
