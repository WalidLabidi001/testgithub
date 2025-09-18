# Utiliser l'image nginx UBI 1.24
FROM registry.access.redhat.com/ubi8/nginx-124

# Copier les fichiers HTML
COPY . /usr/share/nginx/html

# S'assurer que le user non-root a accès
RUN chown -R 1001:0 /usr/share/nginx/html

# Passer à l'utilisateur non-root (déjà défini dans l'image UBI comme 1001)
USER 1001
