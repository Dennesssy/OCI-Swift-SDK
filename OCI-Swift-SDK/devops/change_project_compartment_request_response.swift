import Foundation

// MARK: - ChangeProjectCompartmentRequest

public struct ChangeProjectCompartmentRequest: Codable, Sendable {
    public var projectId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeProjectCompartmentDetails: ChangeProjectCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case projectId, ifMatch, opcRequestId, changeProjectCompartmentDetails
    }

    public init(
                projectId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeProjectCompartmentDetails: ChangeProjectCompartmentDetails? = nil
    ) {
        self.projectId = projectId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeProjectCompartmentDetails = changeProjectCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeProjectCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeProjectCompartmentRequest()" }
}

// MARK: - ChangeProjectCompartmentResponse

public struct ChangeProjectCompartmentResponse: Codable, Sendable {
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

extension ChangeProjectCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeProjectCompartmentResponse()" }
}