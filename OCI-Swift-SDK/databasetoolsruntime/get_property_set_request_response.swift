import Foundation
import OCICommon

// MARK: - GetPropertySetRequest

public struct GetPropertySetRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var propertySetKey: GetPropertySetPropertySetKeyEnum
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, propertySetKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                propertySetKey: GetPropertySetPropertySetKeyEnum,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.propertySetKey = propertySetKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPropertySetRequest: CustomStringConvertible {
    public var description: String { "GetPropertySetRequest()" }
}

// MARK: - GetPropertySetResponse

public struct GetPropertySetResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var propertySet: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, propertySet
    }

    public init(
                opcRequestId: String? = nil,
                propertySet: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.propertySet = propertySet
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPropertySetResponse: CustomStringConvertible {
    public var description: String { "GetPropertySetResponse()" }
}