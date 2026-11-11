import Foundation

// MARK: - PutRepositoryTagDetails

public struct PutRepositoryTagDetails: Codable, Sendable {

    public var objectId: String?

    private enum CodingKeys: String, CodingKey {
        case objectId
    }

    public init(
                objectId: String? = nil
    ) {
        self.objectId = objectId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PutRepositoryTagDetails: CustomStringConvertible {
    public var description: String { "PutRepositoryTagDetails()" }
}