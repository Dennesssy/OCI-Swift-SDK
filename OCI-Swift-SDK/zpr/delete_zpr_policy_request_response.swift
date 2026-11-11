import Foundation

// MARK: - DeleteZprPolicyRequest

public struct DeleteZprPolicyRequest: Codable, Sendable {
    public var zprPolicyId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var opcDryRun: Bool?

    private enum CodingKeys: String, CodingKey {
        case zprPolicyId, ifMatch, opcRequestId, opcDryRun
    }

    public init(
                zprPolicyId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                opcDryRun: Bool? = nil
    ) {
        self.zprPolicyId = zprPolicyId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteZprPolicyRequest: CustomStringConvertible {
    public var description: String { "DeleteZprPolicyRequest()" }
}

// MARK: - DeleteZprPolicyResponse

public struct DeleteZprPolicyResponse: Codable, Sendable {
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

extension DeleteZprPolicyResponse: CustomStringConvertible {
    public var description: String { "DeleteZprPolicyResponse()" }
}