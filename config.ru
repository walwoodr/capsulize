$:.unshift '.'
require 'config/environment'

use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.

use Rack::MethodOverride
use OutfitController
use ClothingCategoryController
use ClothingItemController
use UsersController
run ApplicationController
