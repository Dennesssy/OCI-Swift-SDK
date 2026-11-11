import Foundation

// MARK: - ChangeLustreFileSystemCompartmentRequest

public struct ChangeLustreFileSystemCompartmentRequest: Codable, Sendable {
    public var lustreFileSystemId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeLustreFileSystemCompartmentDetails: ChangeLustreFileSystemCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case lustreFileSystemId, ifMatch, opcRequestId, changeLustreFileSystemCompartmentDetails
    }

    public init(
                lustreFileSystemId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeLustreFileSystemCompartmentDetails: ChangeLustreFileSystemCompartmentDetails? = nil
    ) {
        self.lustreFileSystemId = lustreFileSystemId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeLustreFileSystemCompartmentDetails = changeLustreFileSystemCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeLustreFileSystemCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeLustreFileSystemCompartmentRequest()" }
}

// MARK: - ChangeLustreFileSystemCompartmentResponse

public struct ChangeLustreFileSystemCompartmentResponse: Codable, Sendable {
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

extension ChangeLustreFileSystemCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeLustreFileSystemCompartmentResponse()" }
}