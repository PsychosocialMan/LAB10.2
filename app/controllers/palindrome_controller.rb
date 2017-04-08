require 'nokogiri'
require 'open-uri'

class PalindromeController < ApplicationController
  def input
  end

  def proxy
    client = Nokogiri::XML(open('http://localhost:3000/output.xml?utf8=%E2%9C%93&n='+params[:n].to_s))
    xslt = Nokogiri::XSLT(File.read('public/transformer.xslt'))
    xslt_link = Nokogiri::XML::ProcessingInstruction.new(client, 'xml-stylesheet', 'type="text/xsl" href="transformer.xslt"')
  	respond_to do |format|
	    format.xml { 
        client.at('hash').add_previous_sibling xslt_link
        render xml: client 
      }
      format.html { render html: xslt.transform(client).to_s.html_safe }
	  end
  end
end
