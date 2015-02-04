# -*- coding: utf-8 -*-

require "acme/base64_hexagrams/version"
require "base64"

module Acme
  module Base64Hexagrams
  	NORMAL_BASE64    = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  	HEXAGRAMS_BASE64 = "䷀䷪䷍䷡䷈䷄䷙䷊䷉䷹䷥䷵䷼䷻䷨䷒䷌䷰䷝䷶䷤䷾䷕䷣䷘䷐䷔䷲䷩䷂䷚䷗䷫䷛䷱䷟䷸䷯䷑䷭䷅䷮䷿䷧䷺䷜䷃䷆䷠䷞䷷䷽䷴䷦䷳䷎䷋䷬䷢䷏䷓䷇䷖䷁"
  	
    def self.decode64(str)
      Base64.decode64(str.tr(HEXAGRAMS_BASE64, NORMAL_BASE64))
    end
  
    def self.encode64(bin)
      Base64.encode64(bin).tr(NORMAL_BASE64, HEXAGRAMS_BASE64)
    end
  
    def self.strict_decode64(str)
      Base64.strict_decode64(str.tr(HEXAGRAMS_BASE64, NORMAL_BASE64))
    end
  
    def self.strict_encode64(bin)
      Base64.strict_encode64(bin).tr(NORMAL_BASE64, HEXAGRAMS_BASE64)
    end
  end
end
