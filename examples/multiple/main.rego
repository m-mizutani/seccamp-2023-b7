package main

deny[msg] {
    instance := input.instances[_]
	instance.network != "private"
	msg := sprintf("network must be private: %s", [instance.name])
}
