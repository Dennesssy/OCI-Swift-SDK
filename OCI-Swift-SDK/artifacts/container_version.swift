import Foundation

// MARK: - ContainerVersion

public struct ContainerVersion: Codable, Sendable {

    public var createdBy: String?
    public var timeCreated: Date?
    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case createdBy, timeCreated, version
    }

    public init(
                createdBy: String? = nil,
                timeCreated: Date? = nil,
                version: String? = nil
    ) {
        self.createdBy = createdBy
        self.timeCreated = timeCreated
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerVersion: CustomStringConvertible {
    public var description: String { "ContainerVersion()" }
}