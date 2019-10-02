module CurrentUserConcern
    extend ActiveSupport::Concern
    def current_user
       super || guest_user
    end
    def guest_user
        OpenStruct.new(name: "Guest User ", first_name:"guest", last_name: "surname", email: "asdf@asdf.com") 
    end
end
