import Foundation

// MARK: - OciVcn

public struct OciVcn: Codable, Sendable {

    public var vcnId: String?
    public var vcnName: String?
    public var cidrBlocks: [String]?
    public var backupCidrBlocks: [String]?
    public var dnsLabel: String?

    private enum CodingKeys: String, CodingKey {
        case vcnId, vcnName, cidrBlocks, backupCidrBlocks, dnsLabel
    }

    public init(
                vcnId: String? = nil,
                vcnName: String? = nil,
                cidrBlocks: [String]? = nil,
                backupCidrBlocks: [String]? = nil,
                dnsLabel: String? = nil
    ) {
        self.vcnId = vcnId
        self.vcnName = vcnName
        self.cidrBlocks = cidrBlocks
        self.backupCidrBlocks = backupCidrBlocks
        self.dnsLabel = dnsLabel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciVcn: CustomStringConvertible {
    public var description: String { "OciVcn()" }
}