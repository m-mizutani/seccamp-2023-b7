package main

import future.keywords.every

allow {
    list := ["a", "b", "c"]

    every v in list {
        input.value != v
    }
}
