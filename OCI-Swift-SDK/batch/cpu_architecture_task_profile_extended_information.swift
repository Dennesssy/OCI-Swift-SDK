import Foundation

// MARK: - CpuArchitectureTaskProfileExtendedInformation

public struct CpuArchitectureTaskProfileExtendedInformation: Codable, Sendable {

    public var architecture: CpuArchitectureTaskProfileExtendedInformationArchitectureEnum

    private enum CodingKeys: String, CodingKey {
        case architecture
    }

    public init(
                architecture: CpuArchitectureTaskProfileExtendedInformationArchitectureEnum
    ) {
        self.architecture = architecture
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CpuArchitectureTaskProfileExtendedInformation: CustomStringConvertible {
    public var description: String { "CpuArchitectureTaskProfileExtendedInformation()" }
}