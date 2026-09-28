# ─────────────────────────────────────────────
#  Muhammad Saad Raza — Data Scientist Portfolio
#  Docker image using Nginx (lightweight & fast)
# ─────────────────────────────────────────────

FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio HTML into nginx serving directory
COPY saad_raza_portfolio.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
