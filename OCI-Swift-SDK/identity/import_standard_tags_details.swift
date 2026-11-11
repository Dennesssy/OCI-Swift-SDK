import Foundation

// MARK: - ImportStandardTagsDetails

public struct ImportStandardTagsDetails: Codable, Sendable {

    public var compartmentId: String?
    public var standardTagNamespaceName: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, standardTagNamespaceName
    }

    public init(
                compartmentId: String? = nil,
                standardTagNamespaceName: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.standardTagNamespaceName = standardTagNamespaceName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ImportStandardTagsDetails: CustomStringConvertible {
    public var description: String { "ImportStandardTagsDetails()" }
}