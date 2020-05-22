class Application
 
  def call(env)
    resp = Rack::Response.new
    
    time = Time.authenticate_or_request_with_http_digest
    resp.write "Hello, World"
    resp.finish
  end
 
end