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
  destination = "/etc/nginx/external/cert.pem"
}

template {
  source = "/templates/key.pem.ctmpl"
  destination = "/etc/nginx/external/key.pem"
  command = "chmod 600 /etc/nginx/external/key.pem"
}


template {
  source = "/templates/dh.pem.ctmpl"
  destination = "/etc/nginx/external/dh.pem"
  command = "chmod 600 /etc/nginx/external/dh.pem"
}

template {
  source = "/templates/docker-registry.htpasswd.ctmpl"
  destination = "/etc/nginx/external/docker-registry.htpasswd"
}

template {
  source = "/templates/config.yml.ctmpl"
  destination = "/etc/nginx/external/config.yml"
}

