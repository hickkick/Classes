class Site
    HOME_URL = 'https://www.home.com'

    attr_accessor :current_url

    def initialize 
        @current_url = HOME_URL
    end

    def go_to path
        full_path = HOME_URL + "/" + path
        if full_path != current_url
            @current_url = full_path
            current_url
        end
    end

    def to_s
        "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n*----------*"
    end
end

site = Site.new
puts site
site.go_to('url1')
puts site