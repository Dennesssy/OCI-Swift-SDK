import Foundation

// MARK: - Metadata

public struct Metadata: Codable, Sendable {

    public var hostId: String?
    public var healthCheckKey: String?
    public var instanceId: String?
    public var shape: String?
    public var testType: MetadataTestTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case hostId, healthCheckKey, instanceId, shape, testType
    }

    public init(
                hostId: String? = nil,
                healthCheckKey: String? = nil,
                instanceId: String? = nil,
                shape: String? = nil,
                testType: MetadataTestTypeEnum? = nil
    ) {
        self.hostId = hostId
        self.healthCheckKey = healthCheckKey
        self.instanceId = instanceId
        self.shape = shape
        self.testType = testType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Metadata: CustomStringConvertible {
    public var description: String { "Metadata()" }
}