#!/bin/bash
set -e

# ====== Inställningar ======
VOLUME_NAME="wordpress_wpcontent"         # Docker volume för wp-content
DB_CONTAINER="db"               # Container-namn för databasen
DB_NAME="ecom"             # Namn på WordPress-databasen
DB_USER="root"
DB_PASSWORD="notSecureChangeMe"

BACKUP_DIR="./backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "📦 Tar backup till: $BACKUP_DIR"

# ====== Backup av wp-content (från volume) ======
echo "📁 Kopierar wp-content..."
docker run --rm \
  -v ${VOLUME_NAME}:/from \
  -v $(pwd)/${BACKUP_DIR}:/to \
  alpine \
  sh -c "cp -a /from/. /to/wp-content"

# ====== Backup av databasen ======
echo "💾 Dumpar databasen..."
docker exec ${DB_CONTAINER} \
  mysqldump -u${DB_USER} -p${DB_PASSWORD} ${DB_NAME} > "${BACKUP_DIR}/db-dump.sql"

echo "✅ Backup klar!"
