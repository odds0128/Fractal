json.set! :items do
    json.array! @items do |item|
        json.extract! item, :id, :name, :is_done, :ancestry, :created_at, :updated_at
    end
end