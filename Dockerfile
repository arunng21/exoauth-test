# Use the official Keycloak image as the base image
FROM quay.io/keycloak/keycloak:latest

# Set environment variables
ENV DB_VENDOR=POSTGRES
ENV DB_ADDR=postgres
ENV DB_DATABASE=keycloak
ENV DB_USER=keycloaks
ENV DB_PASSWORD=password
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Expose the Keycloak port
EXPOSE 8080

# Start Keycloak in development mode
CMD ["start-dev"]