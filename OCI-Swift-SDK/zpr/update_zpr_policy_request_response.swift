import Foundation

// MARK: - UpdateZprPolicyRequest

public struct UpdateZprPolicyRequest: Codable, Sendable {
    public var zprPolicyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var opcDryRun: Bool?
    public var updateZprPolicyDetails: UpdateZprPolicyDetails?

    private enum CodingKeys: String, CodingKey {
        case zprPolicyId, ifMatch, opcRequestId, opcDryRun, updateZprPolicyDetails
    }

    public init(
                zprPolicyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                opcDryRun: Bool? = nil,
                updateZprPolicyDetails: UpdateZprPolicyDetails? = nil
    ) {
        self.zprPolicyId = zprPolicyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
        self.updateZprPolicyDetails = updateZprPolicyDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateZprPolicyRequest: CustomStringConvertible {
    public var description: String { "UpdateZprPolicyRequest()" }
}

// MARK: - UpdateZprPolicyResponse

public struct UpdateZprPolicyResponse: Codable, Sendable {
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

extension UpdateZprPolicyResponse: CustomStringConvertible {
    public var description: String { "UpdateZprPolicyResponse()" }
}