FROM oryd/hydra:v1.0.0-beta.9-alpine

ENV OAUTH2_SHARE_ERROR_DEBUG=1
ENV LOG_LEVEL=debug 
ENV OAUTH2_CONSENT_URL=http://localhost:3000/consent 
ENV OAUTH2_LOGIN_URL=http://localhost:3000/login 
ENV OAUTH2_ISSUER_URL=http://localhost:4444 
ENV DATABASE_URL=memory 

EXPOSE 4444
EXPOSE 4445

ADD ./start.sh /
RUN chmod +x /start.sh

ENTRYPOINT [ "/start.sh" ]