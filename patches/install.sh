#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/base'
 )

for repository in "${REPOSITORIES[@]}"; do
    echo "${RED}Applying ${NC}${repository} ${RED}patches...${NC}"
    git apply --directory="${ROOT}/${repository}" "${ROOT}/device/xiaomi/mt6765-common/patches/${repository}"/*
done
