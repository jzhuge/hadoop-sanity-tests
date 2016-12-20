load test_helper

@test "list key" {
  hadoop key list
}

@test "create key" {
  hadoop key delete key1 -f || true
  hadoop key create key1
}

@test "roll key" {
  hadoop key roll key1
}

@test "delete key" {
  hadoop key delete key1 -f
}
