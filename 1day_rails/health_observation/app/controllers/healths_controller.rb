class HealthsController < ApplicationController
    # 提出用のアクション
    def submit
        # Healthモデルのインスタンス@healthの生成
        @health=Health.new#(healths_paramS)
        # ビューファイルで入力された@healthの情報をデータベースに保存
        #@health.save
    end

    # newメソッドに渡す情報を受け取るアクション
    #def healths_params
        #params.require(:health).permit(:year, :school_class, :class_number, :name)
    #end
end