$:.unshift '.'
require 'config/environment'

use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.


use UsersController
use Rack::MethodOverride
run ApplicationController
