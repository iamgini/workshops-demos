#!/bin/bash
# Configure WordPress using environment variables
wp core install --url="${WORDPRESS_SITE_URL}" --title="${WORDPRESS_SITE_TITLE}" --admin_user="${WORDPRESS_ADMIN_USER}" --admin_password="${WORDPRESS_ADMIN_PASSWORD}" --admin_email="${WORDPRESS_ADMIN_EMAIL}"
wp core language activate "${WORDPRESS_LANGUAGE}"
