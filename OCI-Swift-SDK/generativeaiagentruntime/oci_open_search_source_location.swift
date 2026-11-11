import Foundation

// MARK: - OciOpenSearchSourceLocation

public struct OciOpenSearchSourceLocation: Codable, Sendable {

    public var id: String?
    public var indexName: String?
    public var url: String?

    private enum CodingKeys: String, CodingKey {
        case id, indexName, url
    }

    public init(
                id: String? = nil,
                indexName: String? = nil,
                url: String? = nil
    ) {
        self.id = id
        self.indexName = indexName
        self.url = url
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciOpenSearchSourceLocation: CustomStringConvertible {
    public var description: String { "OciOpenSearchSourceLocation()" }
}