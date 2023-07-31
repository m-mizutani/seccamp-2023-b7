package main

permission := "read_only" {
    input.role == "staff"
} else := "write" {
    input.db == "staging"
} else := "write" {
    input.role == "admin"
}
