package main

expensive[msg] {
    instance := input.instances[_]
    cpu := input.cpus[_]
    volume := input.volumes[_]

    instance.cpu_id == cpu.id
    instance.volume_id == volume.id

    cpu.cost + volume.cost > 5
    msg := sprintf("Instance %s has expensive CPU %s and volume %s", [instance.id, cpu.id, volume.id])
}