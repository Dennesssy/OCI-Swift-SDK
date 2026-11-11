import Foundation

// MARK: - NetworkSourcesVirtualSourceList

public struct NetworkSourcesVirtualSourceList: Codable, Sendable {

    public var vcnId: String?
    public var ipRanges: [String]?

    private enum CodingKeys: String, CodingKey {
        case vcnId, ipRanges
    }

    public init(
                vcnId: String? = nil,
                ipRanges: [String]? = nil
    ) {
        self.vcnId = vcnId
        self.ipRanges = ipRanges
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkSourcesVirtualSourceList: CustomStringConvertible {
    public var description: String { "NetworkSourcesVirtualSourceList()" }
}