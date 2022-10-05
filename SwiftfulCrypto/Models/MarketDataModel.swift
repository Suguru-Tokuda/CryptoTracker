//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Suguru on 9/28/22.
//

import Foundation

/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response
 {
     "data": {
         "active_cryptocurrencies": 12965,
         "upcoming_icos": 0,
         "ongoing_icos": 49,
         "ended_icos": 3376,
         "markets": 586,
         "total_market_cap": {
             "btc": 50150269.820351236,
             "eth": 735631440.1643949,
             "ltc": 18410087855.6089,
             "bch": 8599043655.403141,
             "bnb": 3511939929.368539,
             "eos": 854627426984.59,
             "xrp": 2262420777311.8613,
             "xlm": 8953446221425.559,
             "link": 122609244495.59752,
             "dot": 153318843336.3065,
             "yfi": 119356874.00328276,
             "usd": 983421292027.1326,
             "aed": 3612160493786.7197,
             "ars": 144405999491892.0,
             "aud": 1507278013234.48,
             "bdt": 101013582324870.62,
             "bhd": 370951428459.09454,
             "bmd": 983421292027.1326,
             "brl": 5241635486504.612,
             "cad": 1339481755282.3503,
             "chf": 959795578907.4731,
             "clp": 941625887115976.9,
             "cny": 7081125013241.356,
             "czk": 24895900060442.055,
             "dkk": 7512902032033.645,
             "eur": 1010290328567.899,
             "gbp": 903517328628.6353,
             "hkd": 7719454923104.561,
             "huf": 416751102618169.8,
             "idr": 1.4925463541175178e+16,
             "ils": 3472160638653.7354,
             "inr": 80128497164470.81,
             "jpy": 141666262512322.47,
             "krw": 1401855731622186.5,
             "kwd": 305008113722.21515,
             "lkr": 358615362269267.3,
             "mmk": 2068949065079655.2,
             "mxn": 19817504641043.617,
             "myr": 4534555577537.106,
             "ngn": 424179105890062.8,
             "nok": 10497446007512.492,
             "nzd": 1718387095151.3633,
             "php": 57809439197365.34,
             "pkr": 232824990887423.66,
             "pln": 4850695036863.778,
             "rub": 57480976485828.62,
             "sar": 3703769137402.919,
             "sek": 10994930319931.549,
             "sgd": 1410900759773.2375,
             "thb": 37271666967828.31,
             "try": 18199194430254.09,
             "twd": 31198055101426.145,
             "uah": 36209434293458.1,
             "vef": 98469973970.67659,
             "vnd": 2.3345315530906996e+16,
             "zar": 17532410208727.434,
             "xdr": 737315196590.8801,
             "xag": 52023743582.63033,
             "xau": 591940944.0969692,
             "bits": 50150269820351.234,
             "sats": 5.015026982035124e+15
         },
         "total_volume": {
             "btc": 5408098.835798141,
             "eth": 79328935.80395317,
             "ltc": 1985304865.8664756,
             "bch": 927302647.589971,
             "bnb": 378720160.65811026,
             "eos": 92161210886.2658,
             "xrp": 243974662862.14505,
             "xlm": 965520669378.7975,
             "link": 13221921134.024448,
             "dot": 16533579203.526398,
             "yfi": 12871192.391465742,
             "usd": 106050068395.69962,
             "aed": 389527733971.1665,
             "ars": 15572437008453.535,
             "aud": 162541667229.26785,
             "bdt": 10893090683816.113,
             "bhd": 40002616049.199875,
             "bmd": 106050068395.69962,
             "brl": 565246864549.0785,
             "cad": 144446874309.2516,
             "chf": 103502321552.56139,
             "clp": 101542940488882.11,
             "cny": 763613517483.2339,
             "czk": 2684721111478.1704,
             "dkk": 810175436312.7786,
             "eur": 108947568364.40704,
             "gbp": 97433394288.48055,
             "hkd": 832449662428.2692,
             "huf": 44941555867208.91,
             "idr": 1609530363244848.2,
             "ils": 374430446234.3545,
             "inr": 8640887352785.019,
             "jpy": 15276989577708.3,
             "krw": 151173151755732.66,
             "kwd": 32891428712.926235,
             "lkr": 38672320809742.16,
             "mmk": 223111083355375.06,
             "mxn": 2137077709882.2322,
             "myr": 488996865372.57074,
             "ngn": 45742576001117.086,
             "nok": 1132022334784.0115,
             "nzd": 185307223311.63623,
             "php": 6234047432672.922,
             "pkr": 25107353692681.887,
             "pln": 523088674809.668,
             "rub": 6198626709828.794,
             "sar": 399406615992.43066,
             "sek": 1185669988933.412,
             "sgd": 152148548426.35257,
             "thb": 4019297592197.0146,
             "try": 1962562565730.8142,
             "twd": 3364332157685.035,
             "uah": 3904748671320.0806,
             "vef": 10618793348.461382,
             "vnd": 2.51750936129169e+15,
             "zar": 1890657968106.8245,
             "xdr": 79510508529.33356,
             "xag": 5610130276.685191,
             "xau": 63833657.16873925,
             "bits": 5408098835798.141,
             "sats": 540809883579814.06
         },
         "market_cap_percentage": {
             "btc": 38.211421531023355,
             "eth": 16.41951693071798,
             "usdt": 6.92931611365388,
             "usdc": 4.977505345846223,
             "bnb": 4.650755873177051,
             "xrp": 2.2039589442973,
             "busd": 2.1451490015444645,
             "ada": 1.5096738421256872,
             "sol": 1.2006026538182284,
             "doge": 0.8205584166633237
         },
         "market_cap_change_percentage_24h_usd": 1.2128024361137473,
         "updated_at": 1664386542
     }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedwithAbbreviations()
        }
            
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedwithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
