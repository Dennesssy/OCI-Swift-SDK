import Foundation

// MARK: - QueryDiagnosisByHealthCheckKeyDetails

public struct QueryDiagnosisByHealthCheckKeyDetails: Codable, Sendable {

    public var healthCheckKey: String?

    private enum CodingKeys: String, CodingKey {
        case healthCheckKey
    }

    public init(
                healthCheckKey: String? = nil
    ) {
        self.healthCheckKey = healthCheckKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryDiagnosisByHealthCheckKeyDetails: CustomStringConvertible {
    public var description: String { "QueryDiagnosisByHealthCheckKeyDetails()" }
}