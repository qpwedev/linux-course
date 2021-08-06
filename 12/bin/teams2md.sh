#!/bin/bash

set -ueo pipefail

cat <<'EOF_TABLE_HEADER'
<table>
  <thead>
    <tr>
      <th>Team</th>
      <th>Color</th>
    </tr>
  </thead>
  <tbody>
EOF_TABLE_HEADER

while read -r _ team_color team_name; do
    echo "    <tr>"
    echo "      <td>$team_name</td>"
    printf '      <td style="background-color: %s">&nbsp;</td>\n' "$team_color"
    echo "    </tr>"
done <"${1:-/dev/stdin}"

echo "  </tbody>"
echo "</table>"
