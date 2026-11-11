import Foundation

// MARK: - BitbucketServerFilterAttributes

public struct BitbucketServerFilterAttributes: Codable, Sendable {

    public var headRef: String?
    public var baseRef: String?

    private enum CodingKeys: String, CodingKey {
        case headRef, baseRef
    }

    public init(
                headRef: String? = nil,
                baseRef: String? = nil
    ) {
        self.headRef = headRef
        self.baseRef = baseRef
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BitbucketServerFilterAttributes: CustomStringConvertible {
    public var description: String { "BitbucketServerFilterAttributes()" }
}