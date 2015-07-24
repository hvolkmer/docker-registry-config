consul = "consul.service.consul:8500"
retry = "10s"
max_stale = "10m"

vault {
  address = "http://vault.service.consul:8200"
}

template {
  source = "/templates/docker-registry.htpasswd.ctmpl"
  destination = "/config/docker-registry.htpasswd"
}

template {
  source = "/templates/docker-registry.htpasswd.ctmpl"
  destination = "/config/docker-registry.htpasswd"
}

template {
  source = "/templates/cert.pem.ctmpl"
  destination = "/config/cert.pem"
}

template {
  source = "/templates/key.pem.ctmpl"
  destination = "/config/key.pem"
}

template {
  source = "/templates/docker-registry.htpasswd.ctmpl"
  destination = "/config/docker-registry.htpasswd"
}
