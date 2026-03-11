#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

API_URL=""
API_KEY=""
# DATE_RANGE="mtd"
DATE_RANGE="1d"

function fetch_fund_information() {
    command -p curl "${API_URL}/api/v2/portfolio/performance?range=${DATE_RANGE}" -X 'GET' -H "Authorization: Bearer ${API_KEY}" \
		| jq '.performance.netPerformancePercentageWithCurrencyEffect'
}

main() {
  local _resp
  _resp=$(fetch_fund_information)

    # Convert decimal to percentage and round
    local _percent
	_percent=$(jq -n --argjson val "$_resp" '$val * 100')

	printf "%0.2f%%" "${_percent}"
}

# run main driver
main "$@"
