import Foundation

// MARK: - ResponseCacheDetailsTypeEnum

public enum ResponseCacheDetailsTypeEnum: String, Codable, Sendable {
    case externalRespCache = "EXTERNAL_RESP_CACHE"
    case none = "NONE"
}

public extension ResponseCacheDetailsTypeEnum {
    static var allValues: [ResponseCacheDetailsTypeEnum] { [.externalRespCache, .none] }
    static var allStringValues: [String] { ["EXTERNAL_RESP_CACHE", "NONE"] }
    static func fromString(_ value: String) -> ResponseCacheDetailsTypeEnum? { ResponseCacheDetailsTypeEnum(rawValue: value) }
}