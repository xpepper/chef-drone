setup() {
  apt-get install curl -y
}

@test "drone installed" {
  which drone
}

@test "droned installed" {
  which drone
}

@test "drone running" {
  status drone
}

@test "drone service set to start" {
  status drone | grep start
}

@test "listening on 80" {
  nc -z localhost 80
}

@test "GET /install" {
  curl localhost/install
}
