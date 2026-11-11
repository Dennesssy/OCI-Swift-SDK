import Foundation

// MARK: - UpdateProvisionedCapacityRequest

public struct UpdateProvisionedCapacityRequest: Codable, Sendable {
    public var provisionedCapacityId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateProvisionedCapacityDetails: UpdateProvisionedCapacityDetails?

    private enum CodingKeys: String, CodingKey {
        case provisionedCapacityId, ifMatch, opcRequestId, updateProvisionedCapacityDetails
    }

    public init(
                provisionedCapacityId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateProvisionedCapacityDetails: UpdateProvisionedCapacityDetails? = nil
    ) {
        self.provisionedCapacityId = provisionedCapacityId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateProvisionedCapacityDetails = updateProvisionedCapacityDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateProvisionedCapacityRequest: CustomStringConvertible {
    public var description: String { "UpdateProvisionedCapacityRequest()" }
}

// MARK: - UpdateProvisionedCapacityResponse

public struct UpdateProvisionedCapacityResponse: Codable, Sendable {
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

extension UpdateProvisionedCapacityResponse: CustomStringConvertible {
    public var description: String { "UpdateProvisionedCapacityResponse()" }
}