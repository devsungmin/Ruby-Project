class Item < ApplicationRecord
    #Owner에게 속해 있어요
    belongs_to :owner
end