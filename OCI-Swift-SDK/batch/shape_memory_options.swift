import Foundation

// MARK: - ShapeMemoryOptions

public struct ShapeMemoryOptions: Codable, Sendable {

    public var defaultPerOcpuInGBs: Float?
    public var maxInGBs: Float?
    public var maxPerOcpuInGBs: Float?
    public var minInGBs: Float?
    public var minPerOcpuInGBs: Float?

    private enum CodingKeys: String, CodingKey {
        case defaultPerOcpuInGBs, maxInGBs, maxPerOcpuInGBs, minInGBs, minPerOcpuInGBs
    }

    public init(
                defaultPerOcpuInGBs: Float? = nil,
                maxInGBs: Float? = nil,
                maxPerOcpuInGBs: Float? = nil,
                minInGBs: Float? = nil,
                minPerOcpuInGBs: Float? = nil
    ) {
        self.defaultPerOcpuInGBs = defaultPerOcpuInGBs
        self.maxInGBs = maxInGBs
        self.maxPerOcpuInGBs = maxPerOcpuInGBs
        self.minInGBs = minInGBs
        self.minPerOcpuInGBs = minPerOcpuInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ShapeMemoryOptions: CustomStringConvertible {
    public var description: String { "ShapeMemoryOptions()" }
}