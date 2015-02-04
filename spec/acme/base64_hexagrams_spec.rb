# -*- coding: utf-8 -*-

require 'spec_helper'
require 'acme/base64_hexagrams'

describe Acme::Base64Hexagrams do
  it 'has a version number' do
    expect(Acme::Base64Hexagrams::VERSION).not_to be nil
  end

  it 'encodes data correctly in Acme::Base64Hexagrams.encode64' do
    expect(Acme::Base64Hexagrams.encode64("きつねかわいい！！")).to eq("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪\n")
  end

  it 'decodes data correctly in Acme::Base64Hexagrams.decode64' do
    expect(Acme::Base64Hexagrams.decode64("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪\n").force_encoding("utf-8")).to eq("きつねかわいい！！")
  end

  it 'encodes data correctly in Acme::Base64Hexagrams.strict_encode64' do
    expect(Acme::Base64Hexagrams.strict_encode64("きつねかわいい！！")).to eq("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪")
  end

  it 'decodes data correctly in Acme::Base64Hexagrams.strict_decode64' do
    expect(Acme::Base64Hexagrams.strict_decode64("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪").force_encoding("utf-8")).to eq("きつねかわいい！！")
  end

  it 'raises an error when Acme::Base64Hexagrams.strict_decode64 gets an invalid value' do
    expect{Acme::Base64Hexagrams.strict_decode64("きつねかわいい！！")}.to raise_error(ArgumentError)
  end
end
