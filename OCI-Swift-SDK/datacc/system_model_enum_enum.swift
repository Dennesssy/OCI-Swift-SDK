import Foundation

// MARK: - SystemModelEnumEnum

public enum SystemModelEnumEnum: String, Codable, Sendable {
    case x11Ha768 = "X11_HA_768"
    case x10Ha512 = "X10_HA_512"
    case x8Ha384 = "X8_HA_384"
}

public extension SystemModelEnumEnum {
    static var allValues: [SystemModelEnumEnum] { [.x11Ha768, .x10Ha512, .x8Ha384] }
    static var allStringValues: [String] { ["X11_HA_768", "X10_HA_512", "X8_HA_384"] }
    static func fromString(_ value: String) -> SystemModelEnumEnum? { SystemModelEnumEnum(rawValue: value) }
}