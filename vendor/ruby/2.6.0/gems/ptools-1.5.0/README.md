[![Ruby](https://github.com/djberg96/ptools/actions/workflows/ruby.yml/badge.svg)](https://github.com/djberg96/ptools/actions/workflows/ruby.yml)

## Description
The ptools (power tools) library is an additional set of commands for the
File class based on Unix command line tools.
   
## Prerequisites
On MS Windows you will need the win32-file gem.

## Installation
`gem install ptools`

## Adding the trusted cert
`gem cert --add <(curl -Ls https://raw.githubusercontent.com/djberg96/ptools/main/certs/djberg96_pub.pem)`

## Synopsis
```ruby
require "ptools"

File.which("ruby")         # '/usr/local/bin/ruby'
File.whereis("ruby")       # ['/usr/local/bin/ruby','/opt/bin/ruby']

File.head("myfile")        # Returns first 10 lines of 'myfile'
File.tail("myfile",3)      # Returns last 3 lines of 'myfile'
File.wc("myfile",'words')  # Returns the number of words in 'myfile'

File.touch("newfile")      # "newfile" now exists
File.null                  # '/dev/null' on Unix, 'NUL' on Windows
File.binary?('some_file')  # true or false
File.sparse?('some_file')  # true or false

# Creates a copy of 'myfile' called 'newfile', in DOS format
File.nl_convert("myfile", "newfile", "dos")
```
   
## Known Bugs
The File.which and File.whereis methods may fail when using JRuby on Windows.
See https://github.com/jruby/jruby/issues/2291 for details.

Please report any other issues on the github project page.

http://www.github.com/djberg96/ptools

## Acknowledgements
The `File.which` method was originally adopted from the `FileWhich` code posted
by Michael Granger on the now defunct rubygarden.org website. That code was
later replaced by a version based on the `ruby-which` library.

The `File.nl_convert` method is based on the nlcvt program found at
http://www.perl.com/language/ppt/src/nlcvt/nlcvt, written by Tom Christiansen.
    
Thanks go to Matt Hoyle for help with the File.tail method.

And thanks to any and all contributors!

## Future Plans
Add whatever other tools people think might be useful.
   
## License
Apache-2.0
    
## Copyright
(C) 2003-2022 Daniel J. Berger
All Rights Reserved.
    
## Warranty
This package is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantability and fitness for a particular purpose.

## Author
Daniel J. Berger
