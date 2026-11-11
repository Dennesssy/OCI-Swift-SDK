import Foundation
import OCICommon

// MARK: - ExecuteSqlInputStandardDetails

public struct ExecuteSqlInputStandardDetails: Codable, Sendable {

    public var statementText: String?
    public var limit: Int?
    public var offset: Int?
    public var binds: [ExecuteSqlBind]?
    public var responseFormat: ExecuteSqlResponseFormat?
    public var properties: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case statementText, limit, offset, binds, responseFormat, properties
    }

    public init(
                statementText: String? = nil,
                limit: Int? = nil,
                offset: Int? = nil,
                binds: [ExecuteSqlBind]? = nil,
                responseFormat: ExecuteSqlResponseFormat? = nil,
                properties: JSONValue? = nil
    ) {
        self.statementText = statementText
        self.limit = limit
        self.offset = offset
        self.binds = binds
        self.responseFormat = responseFormat
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlInputStandardDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlInputStandardDetails()" }
}