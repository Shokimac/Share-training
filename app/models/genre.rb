class Genre < ApplicationRecord
    has_many :teams

    enum name: {'筋トレ':1, 'シェイプアップ':2, '脱メタボ':3}
end