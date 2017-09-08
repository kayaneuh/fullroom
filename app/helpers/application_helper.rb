module ApplicationHelper
    
    #permet d'afficher l'avatar
    def avatar_url(user)
        user.avatar.url
    end

end
