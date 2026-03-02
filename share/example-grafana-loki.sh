TOKEN=$(curl -s "https://auth.docker.io/token?service=registry.docker.io&scope=repository:grafana/loki:pull" | jq -r .token)

curl -s -H "Authorization: Bearer $TOKEN" \
  "https://registry-1.docker.io/v2/grafana/loki/tags/list?n=100" | jq '.tags[]'
