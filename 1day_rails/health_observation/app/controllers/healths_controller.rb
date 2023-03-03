class HealthsController < ApplicationController
    # 提出用のアクションの作成
    def submit
        @health=Healths.new
    end
end
