load test_helper

@test "kms list key" {
  hadoop key list
}

@test "kms create key" {
  hadoop key delete key1 -f || true
  hadoop key create key1
}

@test "kms roll key" {
  hadoop key roll key1
}

@test "kms delete key" {
  hadoop key delete key1 -f
}
