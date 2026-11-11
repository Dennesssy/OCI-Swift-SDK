import Foundation

// MARK: - LookupContainerImageByUriDetails

public struct LookupContainerImageByUriDetails: Codable, Sendable {

    public var imageUri: String?

    private enum CodingKeys: String, CodingKey {
        case imageUri
    }

    public init(
                imageUri: String? = nil
    ) {
        self.imageUri = imageUri
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LookupContainerImageByUriDetails: CustomStringConvertible {
    public var description: String { "LookupContainerImageByUriDetails()" }
}