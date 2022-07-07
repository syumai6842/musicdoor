FROM ivonet/payara:5.193.1
COPY ./artifact/musicdoor.war $DEPLOY_DIR
