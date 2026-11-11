import Foundation
import OCICommon

// MARK: - UpdatePropertySetRequest

public struct UpdatePropertySetRequest: Codable, Sendable {
    public var databaseToolsConnectionId: String?
    public var propertySetKey: UpdatePropertySetPropertySetKeyEnum
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updatePropertySetDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsConnectionId, propertySetKey, opcRequestId, ifMatch, updatePropertySetDetails
    }

    public init(
                databaseToolsConnectionId: String? = nil,
                propertySetKey: UpdatePropertySetPropertySetKeyEnum,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updatePropertySetDetails: JSONValue? = nil
    ) {
        self.databaseToolsConnectionId = databaseToolsConnectionId
        self.propertySetKey = propertySetKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updatePropertySetDetails = updatePropertySetDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePropertySetRequest: CustomStringConvertible {
    public var description: String { "UpdatePropertySetRequest()" }
}

// MARK: - UpdatePropertySetResponse

public struct UpdatePropertySetResponse: Codable, Sendable {
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

extension UpdatePropertySetResponse: CustomStringConvertible {
    public var description: String { "UpdatePropertySetResponse()" }
}