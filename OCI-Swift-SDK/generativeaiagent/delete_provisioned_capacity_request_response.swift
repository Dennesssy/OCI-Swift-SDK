import Foundation

// MARK: - DeleteProvisionedCapacityRequest

public struct DeleteProvisionedCapacityRequest: Codable, Sendable {
    public var provisionedCapacityId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case provisionedCapacityId, ifMatch, opcRequestId
    }

    public init(
                provisionedCapacityId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.provisionedCapacityId = provisionedCapacityId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProvisionedCapacityRequest: CustomStringConvertible {
    public var description: String { "DeleteProvisionedCapacityRequest()" }
}

// MARK: - DeleteProvisionedCapacityResponse

public struct DeleteProvisionedCapacityResponse: Codable, Sendable {
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

extension DeleteProvisionedCapacityResponse: CustomStringConvertible {
    public var description: String { "DeleteProvisionedCapacityResponse()" }
}