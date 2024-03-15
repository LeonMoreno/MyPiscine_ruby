# require "rack/handler/puma"
require "rack/handler/webrick"

class App
  def call(env)
    req = Rack::Request.new(env)
    puts req.post?
    http_verd = req.params["user"]
    status = 200
    header = {"content-Type" => "text/html"}
    body = ["Hola mi Leo http_verd = #{http_verd} \n"]

    [status, header, body]
  end
end 

class MyMid
  def initialize(app, who = 'Nadies')
    @app = app
    @who = who
  end

  def call
    status, header, body = @app.call(env)
    body << "<br /> Powered by #{@who} !!!"
    [status, header, body]
  end
end

app = Rack::Builder.new do
  user MyMid
  run App.new
end

Rack::Handler::WEBrick.run(app, Port: 9292)