require 'rubygems'
require 'sinatra'
require 'quote'

use_in_file_templates!

get "/" do 
  erb :index 
end

get "/xml" do   
  "<?xml version=\"1.0\" encoding=\"UTF-8\"?><quote>#{Quote.random}</quote>"
end

__END__

@@ layout
<html>
<head><title>Quotr</title></head>
<body bgcolor="pink">
  <%= yield %>
</body>  
</html>

@@ index
<p id="quote" style="font-size:4em;">
  <%= Quote.random %>
</p>
<p id="link"><a  href="/">Quote me again!</a></p>