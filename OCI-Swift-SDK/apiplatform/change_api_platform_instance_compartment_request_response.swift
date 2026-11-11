import Foundation

// MARK: - ChangeApiPlatformInstanceCompartmentRequest

public struct ChangeApiPlatformInstanceCompartmentRequest: Codable, Sendable {
    public var apiPlatformInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeApiPlatformInstanceCompartmentDetails: ChangeApiPlatformInstanceCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case apiPlatformInstanceId, ifMatch, opcRequestId, changeApiPlatformInstanceCompartmentDetails
    }

    public init(
                apiPlatformInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeApiPlatformInstanceCompartmentDetails: ChangeApiPlatformInstanceCompartmentDetails? = nil
    ) {
        self.apiPlatformInstanceId = apiPlatformInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeApiPlatformInstanceCompartmentDetails = changeApiPlatformInstanceCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeApiPlatformInstanceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeApiPlatformInstanceCompartmentRequest()" }
}

// MARK: - ChangeApiPlatformInstanceCompartmentResponse

public struct ChangeApiPlatformInstanceCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeApiPlatformInstanceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeApiPlatformInstanceCompartmentResponse()" }
}