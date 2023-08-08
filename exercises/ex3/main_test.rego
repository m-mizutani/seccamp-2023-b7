package ex3

test_allow_owner {
    allow with input as {
        "user": "david",
        "resource": "6F92A25A-2D05-4CA8-A335-0E8AB780169D",
        "action": "write"
    }
}

test_viewer_can_not_write {
    not allow with input as {
        "user": "eve",
        "resource": "6F92A25A-2D05-4CA8-A335-0E8AB780169D",
        "action": "write"
    }
}

test_viewer_can_read {
    allow with input as {
        "user": "eve",
        "resource": "6F92A25A-2D05-4CA8-A335-0E8AB780169D",
        "action": "read"
    }
}

test_editor_can_write {
    allow with input as {
        "user": "charlie",
        "resource": "D813122C-D5CC-4B6C-862D-1A4B117D0908",
        "action": "write"
    }
}

test_editor_can_read {
    allow with input as {
        "user": "charlie",
        "resource": "D813122C-D5CC-4B6C-862D-1A4B117D0908",
        "action": "read"
    }
}

test_no_role_can_not_write {
    not allow with input as {
        "user": "alice",
        "resource": "D813122C-D5CC-4B6C-862D-1A4B117D0908",
        "action": "write"
    }
}

test_no_role_can_not_read {
    not allow with input as {
        "user": "alice",
        "resource": "D813122C-D5CC-4B6C-862D-1A4B117D0908",
        "action": "read"
    }
}
