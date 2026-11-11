import Foundation

// MARK: - CpuArchitectureTaskProfileExtendedInformationArchitectureEnum

public enum CpuArchitectureTaskProfileExtendedInformationArchitectureEnum: String, Codable, Sendable {
    case x86 = "GENERIC_X86"
    case arm = "GENERIC_ARM"
}

public extension CpuArchitectureTaskProfileExtendedInformationArchitectureEnum {
    static var allValues: [CpuArchitectureTaskProfileExtendedInformationArchitectureEnum] { [.x86, .arm] }
    static var allStringValues: [String] { ["GENERIC_X86", "GENERIC_ARM"] }
    static func fromString(_ value: String) -> CpuArchitectureTaskProfileExtendedInformationArchitectureEnum? { CpuArchitectureTaskProfileExtendedInformationArchitectureEnum(rawValue: value) }
}