require "rubygems"
require 'debugger'
$LOAD_PATH.unshift(File.dirname(__FILE__) + "lib")
require "yaml"
require "bundler/setup"
require "highline"

require 'google_drive'

# Logs in.
# You can also use OAuth. See document of
# GoogleDrive.login_with_oauth for details.
session = GoogleDrive.login("", "")

doc = session.document_by_key("1abEar5CsPCOceKfqkYEukswiWNGyBuHkk6pMq_DiuXw")

puts doc.human_url
puts doc.title
puts doc.download_to_string

spread = session.spreadsheet_by_key("1VegPL25-AjvVXAijetBpoIMnzqpeWeRIOsX9fHhvwiM")

puts spread.human_url
puts spread.title
