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

extension OTelAttribute {
    #if Experimental
    /// `go` namespace
    public enum go {
        /// `go.cpu` namespace
        public enum cpu {
            /// `go.cpu.detailed_state` **UNSTABLE**: The detailed state of the CPU.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `gc/pause`
            ///     - `gc/mark/assist`
            ///
            /// Value SHOULD match the specific CPU class reported by the Go runtime under `/cpu/classes/...`. The list of possible values is subject to change with the Go version used.
            public static let detailedState = "go.cpu.detailed_state"

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
            public static let state = "go.cpu.state"
        }

        /// `go.memory` namespace
        public enum memory {
            /// `go.memory.detailed_type` **UNSTABLE**: The detailed type of memory.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `heap/objects`
            ///     - `heap/free`
            ///
            /// Value SHOULD match the specific memory class reported by the Go runtime under `/memory/classes/...`. The list of possible values is subject to change with the Go version used.
            public static let detailedType = "go.memory.detailed_type"

            /// `go.memory.type` **UNSTABLE**: The type of memory.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
            ///     - `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
            /// - Examples:
            ///     - `other`
            ///     - `stack`
            public static let `type` = "go.memory.type"
        }
    }
    #endif
}
