package ex4

deny[msg] {
    sg := input.SecurityGroups[_]
    p := sg.IpPermissions[_]
    p.IpProtocol == "tcp"
    p.FromPort < 443
    p.ToPort > 443
    p.IpRanges[_].CidrIp == "0.0.0.0/0"
    msg := sprintf("Security group %s allows TCP traffic on port 443", [sg.GroupId])
}
