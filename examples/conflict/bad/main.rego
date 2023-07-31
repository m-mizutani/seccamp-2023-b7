package main

permission := "read_only" {
	input.role == "staff"
}

permission := "write" {
    input.db == "staging"
}

permission := "write" {
	input.role == "admin"
}
