#!/usr/bin/env bash
out=$(sed -e 's/QCefBrowserId/int/g' -e 's/QCefFrameId/QString/g' tpl/QCefView.sip.in)
sed -i '' -e '/^class/,/^};$/ {
  r /dev/stdin
  d
}' sip/QCefView.sip <<< "$out"
