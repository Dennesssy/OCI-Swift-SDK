import Foundation

// MARK: - ShapeNetworkingBandwidthOptions

public struct ShapeNetworkingBandwidthOptions: Codable, Sendable {

    public var defaultPerOcpuInGbps: Float?
    public var maxInGbps: Float?
    public var minInGbps: Float?

    private enum CodingKeys: String, CodingKey {
        case defaultPerOcpuInGbps, maxInGbps, minInGbps
    }

    public init(
                defaultPerOcpuInGbps: Float? = nil,
                maxInGbps: Float? = nil,
                minInGbps: Float? = nil
    ) {
        self.defaultPerOcpuInGbps = defaultPerOcpuInGbps
        self.maxInGbps = maxInGbps
        self.minInGbps = minInGbps
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ShapeNetworkingBandwidthOptions: CustomStringConvertible {
    public var description: String { "ShapeNetworkingBandwidthOptions()" }
}