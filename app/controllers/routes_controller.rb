require 'csv'

class RoutesController < ApplicationController
  def csv
    csv_data = CSV.generate do |csv|
      # ルート情報のヘッダー行を追加
      csv << ['Prefix', 'Verb', 'URI Pattern', 'Controller#Action']

      # ルート情報を追加
      Rails.application.routes.routes.each do |route|
        csv << [
          route.name,
          route.verb,
          route.path.spec.to_s,
          "#{route.defaults[:controller]}##{route.defaults[:action]}"
        ]
      end
    end

    # CSVデータをレスポンスとして返す
    send_data csv_data, filename: 'routes.csv'
  end
end