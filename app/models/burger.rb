class Burger < ApplicationRecord
    def nutriments(code)
        @product = Openfoodfacts::Product.get(code, locale: 'fr')
        if (@product == nil) {
            @json = {"No data" =>"No data"}
        } else {
            @json = @product.nutriments.to_hash
        }
        return @json
    end
end