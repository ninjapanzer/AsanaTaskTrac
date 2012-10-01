#!/usr/bin/env ruby
require "./inc/config.rb"
require "./asanaget.rb"

res = AsanaGet.new("https://app.asana.com/api/1.0/workspaces/"+BaseConfig::Workspace_id.to_s+"/projects").get_response
=begin
req.body = {
  "data" => {
    "workspace" => workspace_id,
    "name" => "Hello World!",
    "assignee" => assignee
  }
}.to_json()
=end

#res = http.start { |http| http.request(req) }
#puts res.body
projects = JSON.parse(res.body)["data"]
puts projects


=begin
# issue the request
res = http.start { |http| http.request(req) }

# output
body = JSON.parse(res.body)
if body['errors'] then
  puts "Server returned an error: #{body['errors'][0]['message']}"
else
  puts "Created task with id: #{body['data']['id']}"
end
=end