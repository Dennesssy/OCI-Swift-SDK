import Foundation
import OCICommon

// MARK: - Citation

public struct Citation: Codable, Sendable {

    public var sourceText: String?
    public var sourceLocation: JSONValue?
    public var title: String?
    public var docId: String?
    public var pageNumbers: [Int]?
    public var metadata: [String: JSONValue]?

    private enum CodingKeys: String, CodingKey {
        case sourceText, sourceLocation, title, docId, pageNumbers, metadata
    }

    public init(
                sourceText: String? = nil,
                sourceLocation: JSONValue? = nil,
                title: String? = nil,
                docId: String? = nil,
                pageNumbers: [Int]? = nil,
                metadata: [String: JSONValue]? = nil
    ) {
        self.sourceText = sourceText
        self.sourceLocation = sourceLocation
        self.title = title
        self.docId = docId
        self.pageNumbers = pageNumbers
        self.metadata = metadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Citation: CustomStringConvertible {
    public var description: String { "Citation()" }
}