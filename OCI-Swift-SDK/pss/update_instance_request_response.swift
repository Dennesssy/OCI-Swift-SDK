import Foundation

// MARK: - UpdateInstanceRequest

public struct UpdateInstanceRequest: Codable, Sendable {
    public var instanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateInstanceDetails: UpdateInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case instanceId, ifMatch, opcRequestId, updateInstanceDetails
    }

    public init(
                instanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateInstanceDetails: UpdateInstanceDetails? = nil
    ) {
        self.instanceId = instanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateInstanceDetails = updateInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateInstanceRequest()" }
}

// MARK: - UpdateInstanceResponse

public struct UpdateInstanceResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateInstanceResponse()" }
}