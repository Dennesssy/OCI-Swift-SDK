import Foundation

// MARK: - CreateZprPolicyRequest

public struct CreateZprPolicyRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var opcDryRun: Bool?
    public var createZprPolicyDetails: CreateZprPolicyDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcDryRun, createZprPolicyDetails
    }

    public init(
                opcRequestId: String? = nil,
                opcDryRun: Bool? = nil,
                createZprPolicyDetails: CreateZprPolicyDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
        self.createZprPolicyDetails = createZprPolicyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateZprPolicyRequest: CustomStringConvertible {
    public var description: String { "CreateZprPolicyRequest()" }
}

// MARK: - CreateZprPolicyResponse

public struct CreateZprPolicyResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var zprPolicy: ZprPolicy?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, opcRequestId, opcWorkRequestId, zprPolicy
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                zprPolicy: ZprPolicy? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.zprPolicy = zprPolicy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateZprPolicyResponse: CustomStringConvertible {
    public var description: String { "CreateZprPolicyResponse()" }
}