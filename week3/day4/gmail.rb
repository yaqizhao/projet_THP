require 'google/apis/gmail_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'
require 'fileutils'
require 'gmail' 
require 'dotenv'

gmail = Gmail.connect!("yaqi.zhao29@gmail.com","THPTEST123")
gmail.deliver do
  to "thp.mail@mailinator.com"
  subject "Bonjour! Vous avez entendu parlé de The Hacking Project? "
  text_part do
    body "Text of plaintext message."
  end
end

class MailSender
	def self.list_mailing
		csv = File.read("test.csv")
		obj = CSV.parse(csv)

	obj.each do |hash_city|
		count 