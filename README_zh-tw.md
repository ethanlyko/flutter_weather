# flutter_weather

### [English](README.md), [中文](README.zh-tw.md)

這個 Flutter 天氣專案展示了來自 OpenWeather 服務的即時天氣資訊。它主要示範了 OpenWeather API、Retrofit 和 Riverpod 的使用。Retrofit 是一個 HTTP 客戶端函式庫，而 Riverpod 是一個反應式快取和資料綁定框架，用於處理應用程式的邏輯。


![app preview](media/app_preview.gif)

## 相依性

   - [retrofit](https://pub.dev/packages/retrofit): 一個 HTTP 客戶端函式庫
   - [riverpod](https://pub.dev/packages/riverpod): 一個反應式快取和資料綁定框架
   - [freezed](https://pub.dev/packages/freezed): 資料類別的程式碼產生器
   - [go_router](https://pub.dev/packages/go_router): Flutter 的宣告式路由套件
   - [flutter_dotenv](https://pub.dev/packages/flutter_dotenv): 在執行時從 `.env` 檔案載入設定

## 如何執行
  1. 取得 OpenWeather API 金鑰
     - 註冊 [OpenWeather]((https://home.openweathermap.org/users/sign_up)) 服務 以使用免費方案
  2. 複製原始碼
     - git clone https://github.com/ethanlyko/flutter_weather.git
  3. 在 `env.example` 檔案中替換 OpenWeather API 金鑰，並將其重新命名為 `.env`
  4. 執行專案

## 概述
此專案利用 `riverpod` 來處理狀態轉換。當天氣查詢執行時，UI 會監聽查詢結果，這個結果由 Riverpod 機制處理，然後更新 UI。


![weather query](media/riverpod_weather.png)