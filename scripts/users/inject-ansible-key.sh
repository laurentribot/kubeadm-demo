#!/usr/bin/env bash

mkdir -p ~/.ssh

cat > ~/.ssh/ansible_rsa << EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAy9IgNYOT6nS1DcSD3O8AWP+dxHWHYnyK+FIhomqvGcZEX4j+
uoqM6ccWGKFYTtApNjimbc7FU6pno3TrcdbHhVqlHaKQr8MC2LXgDQuTVnJWSE+/
wKz0IlHd/gtdJBYs53PYqvB2AOyK8dr3M3ioEwo5mKSMXAA1gWolMIfVhjdzO5OW
iqiRcBaAMT77qN8QjSVMm2CYMcqSmM/82m3Kq1irCFgwxGnUwFDYlP7HWpYY65Et
IpI4quCHMXN2lDvTXhaFCB5/wYQbMQ7HzXL7BhgsvvNmBmSWvANpeL/bbSD74SeO
D6m12WtN09exnlmUSudNNl4qYW0thrZ9Xk6EFQIDAQABAoIBAFGhrtTABhX4+Cqz
cjyiXHlIp19v0vFXADHEc0Qhhk/EYM4CiEMeCqH24pqqxDuMk3Tr63w/PDjuHuQQ
h9voMbDvRQJBgcFjUViKP1n6MOCGmpgLmLkKjBzSvR5qXrt9Ri7M7xJHjHuCQYPs
NuWehXJavgasoKqYStWyNYLiZFqEU1SbHb6OdZ4s3K3+nWXQfEDYMoXVNmgeSt46
s40cqcu7YRsuBYGm3GUMYHaZ76aJg67S1tjHIuwYBs0ePfZgmQYcprK6lmFAKoE4
tryJyiKcWrN9VQ7Jzt9Q/Q1GOFfE1RFk2Td85pcWpeF+U14/3zDFV4SlDrTi6Umo
n7NeTWECgYEA9tHezcxludEuWnYM5L3otfftwBaocFlKVCtqtOeY7hsTAm8Jq+0t
8mnkHvmohBwRTxYN9U/5ITAlMafKncDzovDUVWcnHuXfbgNvGXy98707iz/VxhPT
DS9qVISNAaWqffm8JO2m+GNJ387Q2Cem+QbIZ7KARoBvVtzdZscNlLsCgYEA02bV
nBi6pd+ktLkih4rvJ8aQOwBkPMhNz4J8b+YweTvgabmKH5FH60W4Rwl8HzEqQf09
4GY9sDiJrpeTrBJrEnpPtyoLL5Y3F78v3xuRJl+o7S6r7+IJy/AAz/8rEknyvQsi
5mYRHYyg88DKuQnmNLwoLb8y+5Ra8K3i+/IEJW8CgYBeIVgZoJRDM5W8Bj2QlyTD
EVTo5ztB7au9QfmmGJVoaYbsbLCBkyjsxJmtfoVYLOQlB0I3hlJ658OnllhdpZLF
V5eDIp322LBHYqPiUoKXDFpDFwtOSY06ABVLOmoUcLv+41lvs/rzy9oGsvdPGIBD
hOS1N4xYVu8fb4g4hD2XtQKBgQCrBPQl9bN5YTWDpooSkQjsaqxfru9oZLrd9rfo
ZpYsXY4suZbN9t/xq1Nq1Hd/XGzNOauHD+8z0mk/vwwOFlBcgGpgyTiHZMRpB5gY
q9p+6sBkMG+T/o7iVuSxX8JeZ0hiOtIfBc8u0oea6gqWKzX6z4TJjXYXJGt1bZbF
L4K/LQKBgHKxMsUw8HwVbClJzSpoXSjndQBslrpVMOMCGi2yln5S3I/j5ILtcLRj
HTq44lc4NjiqOVclShKuc0xgzyzP7p2eDWyRr/dkjbjrubZDJdk9hW1eTnHH22B+
2O6i798h80SU3ji2DsI9ccBZQOzUDY91OvcDpiaU9JTHEhp0uVuh
-----END RSA PRIVATE KEY-----
EOF

chmod 700 ~/.ssh
chmod 600 ~/.ssh/ansible_rsa
