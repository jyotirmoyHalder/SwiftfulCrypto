//
//  CoinModel.swift
//  SwiftfulCrypto
//
//  Created by jyotirmoy_halder on 24/8/25.
//

import Foundation


// CoinGecko API info
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 JSON response
 {
 "id":"bitcoin",
 "symbol":"btc",
 "name":"Bitcoin",
 "image":"https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
 "current_price":114617,
 "market_cap":2282641482132,
 "market_cap_rank":1,
 "fully_diluted_valuation":2282643660357,
 "total_volume":25417285929,
 "high_24h":115549,
 "low_24h":114575,
 "price_change_24h":-835.7838001404161,
 "price_change_percentage_24h":-0.72392,
 "market_cap_change_24h":-16158882181.338379,
 "market_cap_change_percentage_24h":-0.70293,
 "circulating_supply":19910796.0,
 "total_supply":19910815.0,
 "max_supply":21000000.0,
 "ath":124128,
 "ath_change_percentage":-7.64818,
 "ath_date":"2025-08-14T00:37:02.582Z",
 "atl":67.81,
 "atl_change_percentage":168954.99992,
 "atl_date":"2013-07-06T00:00:00.000Z","
 roi":null,
 "last_updated":"2025-08-24T11:42:43.201Z",
 "sparkline_in_7d":{"price":[118082.79247968765,118027.58938661608,118094.96996974589,118375.95123513404,118348.89228201286,118359.5056951518,118384.92193419846,118185.47472943665,115280.20647376521,115359.98346714744,115363.99729235176,115431.1805844341,115069.43066346603,114993.24273069265,115086.60114191737]},
 "price_change_percentage_24h_in_currency":-0.7239167767575984}
 
 */


struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0 ) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable{
    let price: [Double]?
}
