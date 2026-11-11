import Foundation

// MARK: - ApplicablePatchSummaryMiddlewareTypeEnum

public enum ApplicablePatchSummaryMiddlewareTypeEnum: String, Codable, Sendable {
    case fmw = "FMW"
    case wls = "WLS"
    case opatch = "OPATCH"
}

public extension ApplicablePatchSummaryMiddlewareTypeEnum {
    static var allValues: [ApplicablePatchSummaryMiddlewareTypeEnum] { [.fmw, .wls, .opatch] }
    static var allStringValues: [String] { ["FMW", "WLS", "OPATCH"] }
    static func fromString(_ value: String) -> ApplicablePatchSummaryMiddlewareTypeEnum? { ApplicablePatchSummaryMiddlewareTypeEnum(rawValue: value) }
}