require 'bundler/setup'
require 'sinatra'

ROOT = "http://www.harimenon.com"

# Redirect
# http://technology.harimenon.com/2012/12/lzwCompress.js.html
# to
# http://www.harimenon.com/blog/2012/12/06/lzwCompress.js/
get '/2013/01/note-to-self-could-be-useful-someday.html' do
  redirect "#{ROOT}/blog/2013/01/16/note-to-self-could-be-useful-someday/", 301
end
get '/2013/01/single-click-deployment.html' do
  redirect "#{ROOT}/blog/2013/01/15/single-click-deployment/", 301
end
get '/2012/12/aop-for-logging-in-net.html' do
  redirect "#{ROOT}/blog/2012/12/16/aop-for-logging-in-net/", 301
end
get '/2012/12/lzwCompress.js.html' do
  redirect "#{ROOT}/blog/2012/12/07/lzwCompress.js/", 301
end
get '/2012/12/useful-git-commands.html' do
  redirect "#{ROOT}/blog/2012/12/06/useful-git-commands/", 301
end
get '/2012/11/json-minification.html' do
  redirect "#{ROOT}/blog/2012/11/09/json-minification/", 301
end
get '/2012/09/convert-all-jpgs-in-folder-to-pdfs-with.html' do
  redirect "#{ROOT}/blog/2012/09/05/convert-all-jpgs-in-folder-to-pdfs-with/", 301
end
get '/2012/05/creating-dynamic-types-in-net.html' do
  redirect "#{ROOT}/blog/2012/05/24/creating-dynamic-types-in-net/", 301
end
get '/2012/02/detect-jquery-presence.html' do
  redirect "#{ROOT}/blog/2012/02/02/detect-jquery-presence/", 301
end
get '/2012/02/array-min-max-jquery-map.html' do
  redirect "#{ROOT}/blog/2012/02/01/array-min-max-jquery-map/", 301
end
get '/2010/11/sort-dropdownselect-list-items-using.html' do
  redirect "#{ROOT}/blog/2010/11/10/sort-dropdownselect-list-items-using/", 301
end
get '/2009/08/displaying-version-for-microsoft.html' do
  redirect "#{ROOT}/blog/2009/08/26/displaying-version-for-microsoft/", 301
end
get '/2009/06/adding-in-new-window-link-on-sharepoint.html' do
  redirect "#{ROOT}/blog/2009/06/23/adding-in-new-window-link-on-sharepoint/", 301
end

# Redirect
# http://technology.harimenon.com/search/label/ClickOnce Deployment
# to
# http://www.harimenon.com/blog/categories/clickonce-deployment/

# DevTool -> devtools
# asp.net -> asp-net
# ruby-on-rails -> ruby-on-rails

get '/search/label/:label' do |label|
  category = label.downcase.gsub(/\W/) { '-' }
  redirect "#{ROOT}/blog/categories/#{category}/", 301
end

# http://technology.harimenon.com/2011_12_01_archive.html
# =>
# http://www.harimenon.com/blog/archives/
get '/:year_:month_:day_archive.html' do
  redirect "#{ROOT}/blog/archives/", 301
end


# http://technology.harimenon.com/blog/2013/01/18/migrated-this-blog-to-octopress
# =>
# http://www.harimenon.com/blog/2013/01/18/migrated-this-blog-to-octopress
get '/blog/:year/:month/:day/:article' do |year, month, day, article|
  redirect "#{ROOT}/blog/#{year}/#{month}/#{day}/#{article}", 301
end

# http://technology.harimenon.com/blog/2013/01/18/migrated-this-blog-to-octopress/
# =>
# http://www.harimenon.com/blog/2013/01/18/migrated-this-blog-to-octopress/
get '/blog/:year/:month/:day/:article/' do |year, month, day, article|
  redirect "#{ROOT}/blog/#{year}/#{month}/#{day}/#{article}/", 301
end


# technology.harimenon.com -> www.harimenon.com/blog/categories/technical/
get '/' do
  redirect "#{ROOT}/blog/categories/technical/", 301
end


# Feeds
# technology.harimenon.com/feeds/posts/default => FeedBurner
get '/feeds/posts/default' do
  redirect "#{ROOT}/atom.xml", 301
end
