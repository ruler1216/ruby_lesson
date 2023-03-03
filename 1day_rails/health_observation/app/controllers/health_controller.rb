class HealthController < ApplicationController
    # 提出用のアクションsubmitの定義
    def submit
        @healthes = Health.new
    end
end
