import Foundation

// MARK: - CreateMonitoredRegionRequest

public struct CreateMonitoredRegionRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createMonitoredRegionDetails: CreateMonitoredRegionDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createMonitoredRegionDetails
    }

    public init(
                opcRequestId: String? = nil,
                createMonitoredRegionDetails: CreateMonitoredRegionDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createMonitoredRegionDetails = createMonitoredRegionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMonitoredRegionRequest: CustomStringConvertible {
    public var description: String { "CreateMonitoredRegionRequest()" }
}

// MARK: - CreateMonitoredRegionResponse

public struct CreateMonitoredRegionResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var monitoredRegion: MonitoredRegion?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, monitoredRegion
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                monitoredRegion: MonitoredRegion? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.monitoredRegion = monitoredRegion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMonitoredRegionResponse: CustomStringConvertible {
    public var description: String { "CreateMonitoredRegionResponse()" }
}