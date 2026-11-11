import Foundation

// MARK: - ShapeOcpuOptions

public struct ShapeOcpuOptions: Codable, Sendable {

    public var maxOcpus: Float?
    public var minOcpus: Float?

    private enum CodingKeys: String, CodingKey {
        case maxOcpus, minOcpus
    }

    public init(
                maxOcpus: Float? = nil,
                minOcpus: Float? = nil
    ) {
        self.maxOcpus = maxOcpus
        self.minOcpus = minOcpus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ShapeOcpuOptions: CustomStringConvertible {
    public var description: String { "ShapeOcpuOptions()" }
}