const surge = require('../AppData/Local/npm-cache/_npx/23158936acd5c32d/node_modules/surge')({ default: 'publish' });
process.env.SURGE_TOKEN = 'b0000c8b61ad82773e969cda3e3fe46a';
process.env.SURGE_LOGIN = 'site33507@inbox.ru';
surge(['publish', '.', '--domain', 'besplatniy-sait.surge.sh']);
