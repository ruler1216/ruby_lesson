class HealthsController < ApplicationController
    def index
        @health=Health.new
    end
    # 提出用のアクション
    def create
        # Healthモデルのインスタンス@healthの生成
        @health=Health.new(healths_params)
        # ビューファイルで入力された@healthの情報をデータベースに保存
        @health.save!
        redirect_to(task_url, notice: "送信が完了しました。")
    end

    # newメソッドに渡す情報を受け取るアクション
    private
    def healths_params
        params.require(:healths).permit(:year,:school_class,:class_number,:name,:commute,:temperature,:etc)
    end
end