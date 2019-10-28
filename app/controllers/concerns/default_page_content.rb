module DefaultPageContent
        extend ActiveSupport::Concern
        
        included do
            before_action :set_title
        end

        def set_title
            @page_title = "Torstein Eliassen"
            @seo_keywords = "Torsteins portfolio"
        end
end
