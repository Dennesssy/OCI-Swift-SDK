import Foundation

// MARK: - PatchMiddlewareTypeEnum

public enum PatchMiddlewareTypeEnum: String, Codable, Sendable {
    case fmw = "FMW"
    case wls = "WLS"
    case opatch = "OPATCH"
}

public extension PatchMiddlewareTypeEnum {
    static var allValues: [PatchMiddlewareTypeEnum] { [.fmw, .wls, .opatch] }
    static var allStringValues: [String] { ["FMW", "WLS", "OPATCH"] }
    static func fromString(_ value: String) -> PatchMiddlewareTypeEnum? { PatchMiddlewareTypeEnum(rawValue: value) }
}