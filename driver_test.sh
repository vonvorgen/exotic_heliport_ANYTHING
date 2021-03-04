#!/usr/bin/env sh

flutter drive \
  --no-sound-null-safety \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/login_test.dart