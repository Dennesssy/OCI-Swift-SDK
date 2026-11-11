import Foundation

// MARK: - ApplicablePatchSummary

public struct ApplicablePatchSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var description: String?
    public var weblogicVersion: String?
    public var middlewareType: [ApplicablePatchSummaryMiddlewareTypeEnum]
    public var osArch: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, description, weblogicVersion, middlewareType, osArch
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                weblogicVersion: String? = nil,
                middlewareType: [ApplicablePatchSummaryMiddlewareTypeEnum],
                osArch: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.description = description
        self.weblogicVersion = weblogicVersion
        self.middlewareType = middlewareType
        self.osArch = osArch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
