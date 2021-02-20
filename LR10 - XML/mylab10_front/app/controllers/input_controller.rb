require 'open-uri'
require 'nokogiri'
class InputController < ApplicationController
  def count
    n = params[:n]
    if params[:n] == nil then n = '' end
      if (params[:converter] == "") || (params[:converter] == nil) then conv = '/converter'
      else conv = params[:converter]
      end
      xslt = Nokogiri::XSLT(open(Rails.root + 'public/converter.xslt').read)
      xml = Nokogiri::XML(open('http://localhost:3000/' + n).read)
      
      if params[:ext] == "xml" then
        render xml: xml
        return
      elsif params[:conversion] == "client" then
        xsl = Nokogiri::XML::ProcessingInstruction.new(xml, "xml-stylesheet",
          'type="text/xsl" href="' + conv + '"')
          
          xml.root.add_previous_sibling xsl
          render inline: xml.to_s
          return
        else
          output = xslt.transform(xml).to_s
          render inline: output
          return
        end
      end
      
      def index
      end
      
      def converter
        render inline: open(Rails.root + 'public/converter.xslt').read
      end
    end