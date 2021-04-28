class History < ApplicationRecord
    has_one :order_item, class_name: "buyedItems", foreign_key: "buyed_items_id"
end
