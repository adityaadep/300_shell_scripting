#!/bin/bash
password=$(head /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()-_=+{}[]|;:<>,.?' | head -c 16)
RED='\033[0;31m'    # Red color
GREEN='\033[0;32m'  # Green color
NC='\033[0m'        # No Color (reset)

# Print the generated password in green color
echo -e "${GREEN}Generated Password:${NC} ${RED}$password${NC}"
echo "Random password generated is : $password"
