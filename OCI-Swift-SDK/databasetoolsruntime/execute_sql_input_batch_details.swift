import Foundation
import OCICommon

// MARK: - ExecuteSqlInputBatchDetails

public struct ExecuteSqlInputBatchDetails: Codable, Sendable {

    public var batchStatementTexts: [String]
    public var responseFormat: ExecuteSqlResponseFormat?
    public var properties: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case batchStatementTexts, responseFormat, properties
    }

    public init(
                batchStatementTexts: [String],
                responseFormat: ExecuteSqlResponseFormat? = nil,
                properties: JSONValue? = nil
    ) {
        self.batchStatementTexts = batchStatementTexts
        self.responseFormat = responseFormat
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlInputBatchDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlInputBatchDetails()" }
}