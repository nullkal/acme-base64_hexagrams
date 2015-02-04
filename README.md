# Acme::Base64Hexagrams

If you were to be an onmyoji (an yin-yang exorcist), this gem would help your work.

This gem provides the functions that encodes/decodes Base64 written in hexagrams, the figures used in I Ching.
The API is compatible with the Base64 library in the Ruby Standard Library, so it is very easy to make your application more yin-yang-ful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acme-base64_hexagrams'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acme-base64_hexagrams

## Usage

    p Acme::Base64Hexagrams.encode64("きつねかわいい！！") #=> "䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪\n"
    p Acme::Base64Hexagrams.decode64("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪\n").force_encoding("utf-8") #=> "きつねかわいい！！"
    
    p Acme::Base64Hexagrams.strict_encode64("きつねかわいい！！") #=> "䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪"
    p Acme::Base64Hexagrams.strict_decode64("䷋䷋䷙䷻䷋䷋䷙䷸䷋䷋䷙䷜䷋䷋䷙䷵䷋䷋䷥䷒䷋䷋䷙䷈䷋䷋䷙䷈䷏䷏䷷䷪䷏䷏䷷䷪").force_encoding("utf-8") #=> "きつねかわいい！！"

## Contributing

1. Fork it ( https://github.com/nullkal/acme-base64_hexagrams/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
