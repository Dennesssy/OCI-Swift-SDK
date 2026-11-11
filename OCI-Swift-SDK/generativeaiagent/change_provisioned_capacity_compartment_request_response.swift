import Foundation

// MARK: - ChangeProvisionedCapacityCompartmentRequest

public struct ChangeProvisionedCapacityCompartmentRequest: Codable, Sendable {
    public var provisionedCapacityId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeProvisionedCapacityCompartmentDetails: ChangeProvisionedCapacityCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case provisionedCapacityId, ifMatch, opcRequestId, changeProvisionedCapacityCompartmentDetails
    }

    public init(
                provisionedCapacityId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeProvisionedCapacityCompartmentDetails: ChangeProvisionedCapacityCompartmentDetails? = nil
    ) {
        self.provisionedCapacityId = provisionedCapacityId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeProvisionedCapacityCompartmentDetails = changeProvisionedCapacityCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeProvisionedCapacityCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeProvisionedCapacityCompartmentRequest()" }
}

// MARK: - ChangeProvisionedCapacityCompartmentResponse

public struct ChangeProvisionedCapacityCompartmentResponse: Codable, Sendable {
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

extension ChangeProvisionedCapacityCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeProvisionedCapacityCompartmentResponse()" }
}