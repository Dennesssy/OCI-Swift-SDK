import Foundation

// MARK: - CancelPsaWorkRequestRequest

public struct CancelPsaWorkRequestRequest: Codable, Sendable {
    public var workRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, ifMatch, opcRequestId
    }

    public init(
                workRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelPsaWorkRequestRequest: CustomStringConvertible {
    public var description: String { "CancelPsaWorkRequestRequest()" }
}

// MARK: - CancelPsaWorkRequestResponse

public struct CancelPsaWorkRequestResponse: Codable, Sendable {
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

extension CancelPsaWorkRequestResponse: CustomStringConvertible {
    public var description: String { "CancelPsaWorkRequestResponse()" }
}