module DefaultPageContent
        extend ActiveSupport::Concern
        
        included do
            before_action :set_title
        end

        def set_title
            @page_title = "Default tab-title"
            @seo_keywords = "Torsteins portfolio"
        end
end
