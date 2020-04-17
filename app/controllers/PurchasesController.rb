class PurchasesController < ApplicationController
    
    def index
        purchases = Purchase.all
        render json: purchases
    end 
   
    def show
        purchase = Purchase.find(params[:id])
        render json: purchase
    end 
    
    
        def create
            user_id = params['user_id']
            product_id = params['product_ids']
            product_id.each do |product|
                product.to_i
                Purchase.create(user_id: user_id, product_id:product)
            end 
            render json: {status: 204}
        end 

    
        def update
            purchase = Purchase.find(params[:id])
            purchase.update(product_params)
            render json: purchase
        end

    private 

    def purchase_params
        
        params.require(:purchase).permit(:price)
    end
end


