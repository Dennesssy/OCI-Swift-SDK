import Foundation

// MARK: - ChangeSubscriberCompartmentRequest

public struct ChangeSubscriberCompartmentRequest: Codable, Sendable {
    public var subscriberId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeSubscriberCompartmentDetails: ChangeSubscriberCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, ifMatch, opcRequestId, isLockOverride, changeSubscriberCompartmentDetails
    }

    public init(
                subscriberId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeSubscriberCompartmentDetails: ChangeSubscriberCompartmentDetails? = nil
    ) {
        self.subscriberId = subscriberId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeSubscriberCompartmentDetails = changeSubscriberCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeSubscriberCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeSubscriberCompartmentRequest()" }
}

// MARK: - ChangeSubscriberCompartmentResponse

public struct ChangeSubscriberCompartmentResponse: Codable, Sendable {
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

extension ChangeSubscriberCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeSubscriberCompartmentResponse()" }
}