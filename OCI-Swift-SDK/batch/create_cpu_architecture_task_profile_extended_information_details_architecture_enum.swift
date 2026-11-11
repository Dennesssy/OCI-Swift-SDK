import Foundation

// MARK: - CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum

public enum CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum: String, Codable, Sendable {
    case x86 = "GENERIC_X86"
    case arm = "GENERIC_ARM"
}

public extension CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum {
    static var allValues: [CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum] { [.x86, .arm] }
    static var allStringValues: [String] { ["GENERIC_X86", "GENERIC_ARM"] }
    static func fromString(_ value: String) -> CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum? { CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum(rawValue: value) }
}