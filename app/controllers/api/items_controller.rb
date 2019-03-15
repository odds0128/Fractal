class Api::ItemsController < ApplicationController
    protect_from_forgery :except => [:create]

    # GET /items
    def index
        @items = Item.order('id DESC')
    end

    # POST /items
    def create
        @item = Item.new(item_params)

        if @item.save
            render :show, status: :created
        else
            render json: @item.errors, status: :unprocessable_entry
        end
    end

    # PATCH/PUT /items/1
    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            render :show, status: :ok
        else
            render json: @item.errors, status: :unprocessable_entity
        end
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def item_params
            params.fetch(:item, {}).permit(
                :name, :is_done
            )
        end
    end
