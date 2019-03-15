json.set! :item do
    json.extract! @item, :id, :name, :is_done, :ancestry, :created_at, :updated_at
end
