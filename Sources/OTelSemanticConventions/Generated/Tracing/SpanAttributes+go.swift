//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// DO NOT EDIT. This file is generated automatically. See README for details.

#if Tracing

import Tracing

extension SpanAttributes {
    #if Experimental
    /// `go` namespace
    public var go: GoAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct GoAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `go.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `go.cpu.detailed_state` **UNSTABLE**: The detailed state of the CPU.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `gc/pause`
                ///     - `gc/mark/assist`
                ///
                /// Value SHOULD match the specific CPU class reported by the Go runtime under `/cpu/classes/...`. The list of possible values is subject to change with the Go version used.
                public var detailedState: SpanAttributeKey<String> { .init(name: OTelAttribute.go.cpu.detailedState) }

                /// `go.cpu.state` **UNSTABLE**: The state of the CPU.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `user`: CPU time spent running user Go code.
                ///     - `gc`: CPU time spent performing garbage collection tasks.
                ///     - `scavenge`: CPU time spent returning unused memory to the underlying platform.
                ///     - `idle`: Available CPU time not spent executing any Go or Go runtime code.
                /// - Examples:
                ///     - `user`
                ///     - `gc`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.go.cpu.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }

        /// `go.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `go.memory.detailed_type` **UNSTABLE**: The detailed type of memory.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `heap/objects`
                ///     - `heap/free`
                ///
                /// Value SHOULD match the specific memory class reported by the Go runtime under `/memory/classes/...`. The list of possible values is subject to change with the Go version used.
                public var detailedType: SpanAttributeKey<String> { .init(name: OTelAttribute.go.memory.detailedType) }

                /// `go.memory.type` **UNSTABLE**: The type of memory.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
                ///     - `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
                /// - Examples:
                ///     - `other`
                ///     - `stack`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.go.memory.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }
    }
    #endif
}

#endif
