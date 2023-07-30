package ec2

failed[msg] {
    instance := data.out.instances.Reservations[_].Instances[_]
    msg := concat(" ", [
        "failed",
        instance.InstanceId,
    ])
}
