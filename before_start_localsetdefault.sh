# 本地路径（按需改）
export DATA_ROOT_PATH="$HOME/lingqing-data"
export DATA_ROOT_HOST_PATH="$HOME/lingqing-data"

# 必填：生成后 SECRET_KEY、DB 密码等不能为空
export SECRET_KEY="$(openssl rand -hex 32)"
export TENANT_APP_DB_PASSWORD='dev_tenant_app_pw'
export TENANT_MANAGER_DB_PASSWORD='dev_tenant_manager_pw'

./deploy/scripts/generate-env.sh deploy/env/.env.template .env.local
mkdir -p "$DATA_ROOT_PATH"