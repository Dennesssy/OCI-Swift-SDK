import Foundation

// MARK: - LustreFileSystemSummaryPerformanceTierEnum

public enum LustreFileSystemSummaryPerformanceTierEnum: String, Codable, Sendable {
    case _125 = "MBPS_PER_TB_125"
    case _250 = "MBPS_PER_TB_250"
    case _500 = "MBPS_PER_TB_500"
    case _1000 = "MBPS_PER_TB_1000"
}

public extension LustreFileSystemSummaryPerformanceTierEnum {
    static var allValues: [LustreFileSystemSummaryPerformanceTierEnum] { [._125, ._250, ._500, ._1000] }
    static var allStringValues: [String] { ["MBPS_PER_TB_125", "MBPS_PER_TB_250", "MBPS_PER_TB_500", "MBPS_PER_TB_1000"] }
    static func fromString(_ value: String) -> LustreFileSystemSummaryPerformanceTierEnum? { LustreFileSystemSummaryPerformanceTierEnum(rawValue: value) }
}