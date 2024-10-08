class Site
    HOME_URL = 'https://www.home.com'
    @@path = []

    attr_reader :current_url

    def initialize 
        @current_url = HOME_URL
        @@path << current_url
    end

    def go_to path
        full_path = HOME_URL + "/" + path
        if full_path != current_url
            @current_url = full_path
            current_url
            @@path << current_url
        end
    end

    def to_s
        "*----------*\n home: #{HOME_URL}\n current url: #{current_url}\n history: #{@@path.to_s}\n*----------*"
    end

    def <(other)
        @@path.index(current_url) < @@path.index(other.current_url)
    end

    def >(other)
        @@path.index(current_url) > @@path.index(other.current_url)
    end

    def ==(other)
        current_url == other.current_url
    end

    def !=(other) 
        !(current_url == other.current_url)
    end
end

# site = Site.new
# puts site
# site.go_to('url1')
# puts site
a1 = Site.new
a1.go_to('1')
a1.go_to('2')
a2 = Site.new
a2.go_to('1')
puts a2
puts a1 < a2 #false
puts a1 > a2 # true
puts a1 == a2 # false
puts a1 != a2 # true

#['https://www.home.com', 'https://www.home.com/1', 'https://www.home.com/2', 'https://www.home.com', 'https://www.home.com/1']