import Foundation

// MARK: - IndexSchema

public struct IndexSchema: Codable, Sendable {

    public var bodyKey: String?
    public var urlKey: String?
    public var titleKey: String?
    public var embeddingBodyKey: String?

    private enum CodingKeys: String, CodingKey {
        case bodyKey, urlKey, titleKey, embeddingBodyKey
    }

    public init(
                bodyKey: String? = nil,
                urlKey: String? = nil,
                titleKey: String? = nil,
                embeddingBodyKey: String? = nil
    ) {
        self.bodyKey = bodyKey
        self.urlKey = urlKey
        self.titleKey = titleKey
        self.embeddingBodyKey = embeddingBodyKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IndexSchema: CustomStringConvertible {
    public var description: String { "IndexSchema()" }
}