resource "aws_instance" "web" {
    for_each = var.instance_names # for_each is loop condition
    ami = data.aws_ami.centos8.id
    instance_type = each.value # since we are implimenting for_each loop condition, when for each is exicuted it will give a value each

tags = {
    Name = each.key
}
}

resource "aws_route53_record" "web"{
    for_each = aws_instance.web
    zone_id = var.zone_id
    name = "${each.key}.${var.domain_name}"
    type = "A"
    ttl = 1
    records =[ startswith(each.key, "web")? each.value.public_ip : each.value.private_ip ]
}
