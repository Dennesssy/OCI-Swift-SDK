import Foundation

// MARK: - CancelWorkRequestRequest

public struct CancelWorkRequestRequest: Codable, Sendable {
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

extension CancelWorkRequestRequest: CustomStringConvertible {
    public var description: String { "CancelWorkRequestRequest()" }
}

// MARK: - CancelWorkRequestResponse

public struct CancelWorkRequestResponse: Codable, Sendable {
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

extension CancelWorkRequestResponse: CustomStringConvertible {
    public var description: String { "CancelWorkRequestResponse()" }
}