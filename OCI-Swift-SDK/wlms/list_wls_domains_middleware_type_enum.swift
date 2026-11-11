import Foundation

// MARK: - ListWlsDomainsMiddlewareTypeEnum

public enum ListWlsDomainsMiddlewareTypeEnum: String, Codable, Sendable {
    case fmw = "FMW"
    case wls = "WLS"
}

public extension ListWlsDomainsMiddlewareTypeEnum {
    static var allValues: [ListWlsDomainsMiddlewareTypeEnum] { [.fmw, .wls] }
    static var allStringValues: [String] { ["FMW", "WLS"] }
    static func fromString(_ value: String) -> ListWlsDomainsMiddlewareTypeEnum? { ListWlsDomainsMiddlewareTypeEnum(rawValue: value) }
}