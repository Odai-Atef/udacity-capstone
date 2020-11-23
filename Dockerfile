FROM duluca/minimal-node-web-server
COPY /dist/* /usr/src/app/public/
WORKDIR /usr/src/app
ENV HOST "0.0.0.0"
ENV PORT 3000
EXPOSE 3000
ENTRYPOINT ["dumb-init", "--"]
CMD ["npm", "start"]