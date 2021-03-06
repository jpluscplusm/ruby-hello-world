require 'sinatra'

get '/' do
  "Hello, World!\n"
end

post '/crash' do
  Process.kill 'KILL', Process.pid
end

post '/exit' do
  Process.kill 'INT', Process.pid
end

post '/kill-haproxy' do
  pid = exec("pidof haproxy")
  Process.kill 'KILL', pid
end