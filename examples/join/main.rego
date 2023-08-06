package main

allow {
    user := data.users[_]
    user.id == input.user_id

    input.resource.label == "secret"
    user.role == "admin"
}
