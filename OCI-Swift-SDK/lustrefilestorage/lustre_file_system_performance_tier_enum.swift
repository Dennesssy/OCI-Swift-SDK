import Foundation

// MARK: - LustreFileSystemPerformanceTierEnum

public enum LustreFileSystemPerformanceTierEnum: String, Codable, Sendable {
    case _125 = "MBPS_PER_TB_125"
    case _250 = "MBPS_PER_TB_250"
    case _500 = "MBPS_PER_TB_500"
    case _1000 = "MBPS_PER_TB_1000"
}

public extension LustreFileSystemPerformanceTierEnum {
    static var allValues: [LustreFileSystemPerformanceTierEnum] { [._125, ._250, ._500, ._1000] }
    static var allStringValues: [String] { ["MBPS_PER_TB_125", "MBPS_PER_TB_250", "MBPS_PER_TB_500", "MBPS_PER_TB_1000"] }
    static func fromString(_ value: String) -> LustreFileSystemPerformanceTierEnum? { LustreFileSystemPerformanceTierEnum(rawValue: value) }
}