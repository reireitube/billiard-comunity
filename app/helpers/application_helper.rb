module ApplicationHelper
    def login?
        !!session[:id]
    end
end
