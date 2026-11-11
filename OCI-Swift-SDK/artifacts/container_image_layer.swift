import Foundation

// MARK: - ContainerImageLayer

public struct ContainerImageLayer: Codable, Sendable {

    public var digest: String?
    public var sizeInBytes: Int64?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case digest, sizeInBytes, timeCreated
    }

    public init(
                digest: String? = nil,
                sizeInBytes: Int64? = nil,
                timeCreated: Date? = nil
    ) {
        self.digest = digest
        self.sizeInBytes = sizeInBytes
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImageLayer: CustomStringConvertible {
    public var description: String { "ContainerImageLayer()" }
}