import Foundation

// MARK: - CreateOrUpdateGitTagDetails

public struct CreateOrUpdateGitTagDetails: Codable, Sendable {

    public var refName: String?
    public var objectId: String?

    private enum CodingKeys: String, CodingKey {
        case refName, objectId
    }

    public init(
                refName: String? = nil,
                objectId: String? = nil
    ) {
        self.refName = refName
        self.objectId = objectId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateOrUpdateGitTagDetails: CustomStringConvertible {
    public var description: String { "CreateOrUpdateGitTagDetails()" }
}