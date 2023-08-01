package ec2

failed[msg] {
    instance := data.out.instances.Reservations[_].Instances[_]
    sg := data.out.security_groups.SecurityGroups[_]
    instance.SecurityGroups[_].GroupId == sg.GroupId

    sg.IpPermissions[x].IpProtocol == "tcp"
    sg.IpPermissions[x].FromPort <= 80
    sg.IpPermissions[x].ToPort >= 80
    sg.IpPermissions[x].IpRanges[_].CidrIp == "0.0.0.0/0"

    msg := concat(" ", [
        "failed",
        instance.InstanceId,
        sg.GroupId,
    ])
}
