import Foundation

// MARK: - NodeDetails

public struct NodeDetails: Codable, Sendable {

    public var hostname: String?
    public var ip: String?
    public var vipHostname: String?
    public var vip: String?

    private enum CodingKeys: String, CodingKey {
        case hostname, ip, vipHostname, vip
    }

    public init(
                hostname: String? = nil,
                ip: String? = nil,
                vipHostname: String? = nil,
                vip: String? = nil
    ) {
        self.hostname = hostname
        self.ip = ip
        self.vipHostname = vipHostname
        self.vip = vip
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NodeDetails: CustomStringConvertible {
    public var description: String { "NodeDetails()" }
}