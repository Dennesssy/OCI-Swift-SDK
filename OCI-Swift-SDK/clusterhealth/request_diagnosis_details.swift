import Foundation

// MARK: - RequestDiagnosisDetails

public struct RequestDiagnosisDetails: Codable, Sendable {

    public var healthCheckKeys: [String]

    private enum CodingKeys: String, CodingKey {
        case healthCheckKeys
    }

    public init(
                healthCheckKeys: [String]
    ) {
        self.healthCheckKeys = healthCheckKeys
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestDiagnosisDetails: CustomStringConvertible {
    public var description: String { "RequestDiagnosisDetails()" }
}