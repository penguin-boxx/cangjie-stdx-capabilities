/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package stdx.effect

/** Runs the callback with assumed static evidence for C; runtime handlers remain dynamic. */
public func unsafeCanPerform<C, T, R>(f: () performs C -> R): R where C <: Command<T> {
    f()
}
