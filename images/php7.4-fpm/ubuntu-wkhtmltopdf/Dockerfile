FROM itkdev/php7.4-fpm
LABEL maintainer="ITK Dev <itkdev@mkb.aarhus.dk>"

# Install wkhtmltopdf
RUN apt-get update \
    # Dependencies for wkhtmltopdf
    && apt-get install --yes xfonts-base xfonts-75dpi \
    # Download and install wkhtmltopdf
    && curl --location https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.bullseye_amd64.deb > /tmp/wkhtmltox.deb \
    && dpkg --install /tmp/wkhtmltox.deb \
    # Clean up
    && rm -rf /tmp/wkhtmltox.deb /var/lib/apt/lists/*