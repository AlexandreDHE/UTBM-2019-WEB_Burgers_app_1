class Burger < ApplicationRecord
    def nutriments(code)
        require 'openfoodfacts'
        product = Openfoodfacts::Product.get(code, locale: 'fr')
        return code
    end
end