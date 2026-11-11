import Foundation

// MARK: - ChangeMultiCloudResourceDiscoveryCompartmentRequest

public struct ChangeMultiCloudResourceDiscoveryCompartmentRequest: Codable, Sendable {
    public var multiCloudResourceDiscoveryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeMultiCloudResourceDiscoveryCompartmentDetails: ChangeMultiCloudResourceDiscoveryCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case multiCloudResourceDiscoveryId, ifMatch, opcRequestId, changeMultiCloudResourceDiscoveryCompartmentDetails
    }

    public init(
                multiCloudResourceDiscoveryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeMultiCloudResourceDiscoveryCompartmentDetails: ChangeMultiCloudResourceDiscoveryCompartmentDetails? = nil
    ) {
        self.multiCloudResourceDiscoveryId = multiCloudResourceDiscoveryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeMultiCloudResourceDiscoveryCompartmentDetails = changeMultiCloudResourceDiscoveryCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeMultiCloudResourceDiscoveryCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeMultiCloudResourceDiscoveryCompartmentRequest()" }
}

// MARK: - ChangeMultiCloudResourceDiscoveryCompartmentResponse

public struct ChangeMultiCloudResourceDiscoveryCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeMultiCloudResourceDiscoveryCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeMultiCloudResourceDiscoveryCompartmentResponse()" }
}