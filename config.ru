$:.unshift '.'
require 'config/environment'
require 'rack-flash'

use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.

use Rack::MethodOverride
use ClothingCategoryController
use ClothingItemController
use UsersController
run ApplicationController
