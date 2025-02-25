#!/bin/bash

# Set the domain name for the certificate
DOMAIN_NAME="localhost"

# Create a private key
openssl genrsa -out private.key 2048

# Generate a Certificate Signing Request (CSR)
openssl req -new -key private.key -out csr.csr -subj "/C=US/ST=STATE/L=CITY/O=NONE/CN=$DOMAIN_NAME"

# Generate a self-signed certificate
openssl x509 -req -days 365 -in csr.csr -signkey private.key -out certificate.crt

# Verify the certificate
openssl x509 -text -in certificate.crt

echo "TLS certificate for '$DOMAIN_NAME' created successfully!"
echo "Private key: private.key"
echo "Certificate: certificate.crt"
