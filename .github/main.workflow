workflow "New workflow" {
  on = "issues"
  resolves = ["HTTP client"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
  args = ["POST", "https://hellomouse.net/api/testing2", "hello=world"]
}
