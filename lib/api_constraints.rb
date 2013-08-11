# http://railscasts.com/episodes/350-rest-api-versioning

class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.oauth.v#{@version}")
  end
end
