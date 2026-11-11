import Foundation

// MARK: - ScanManagedInstanceRequest

public struct ScanManagedInstanceRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, opcRequestId, ifMatch
    }

    public init(
                managedInstanceId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScanManagedInstanceRequest: CustomStringConvertible {
    public var description: String { "ScanManagedInstanceRequest()" }
}

// MARK: - ScanManagedInstanceResponse

public struct ScanManagedInstanceResponse: Codable, Sendable {
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

extension ScanManagedInstanceResponse: CustomStringConvertible {
    public var description: String { "ScanManagedInstanceResponse()" }
}