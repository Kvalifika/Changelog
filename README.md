# kvalifika-backend

See [dev api](https://apidev.kvalifika.com/), [staging](https://apistaging.kvalifika.com/), [prod](https://api.kyc.ge/)

---

this project was bootstraped by [Nest CLI](https://docs.nestjs.com/cli/overview)

### Tech Stack

- [Nest JS][nestjs] for development infrastructure
- [Typescript][ts] for type definition
- [Express][express]
- [Graphql][gql]


### Directory Layout

```bash
├── .ebextensions/                 # elastic beanstalk config
├── dist/                          # Compiled output
├── node_modules/                  # 3rd-party libraries and utilities
├── deployment/                    # Deployment infrastructure
├── jest-stare/                    # Nest generated test stats
├── config/                        # Application config
├── views/                         # Application view engine files for generating html
├── src/                           # Application source code
│   ├── shared/                    # Shared modules decorators helpers etc.
│   │   │── decorator/             # NestJS Shared decorators
│   │   │── middleware/            # NestJS Shared middleware
│   │   │── interceptor/           # NestJS Shared interceptors
│   │   │── scalars/               # Graphql Shared scalars
│   │   │── types/                 # Typescript shared types
├── cli/                           # cli commands
├── tsconfig.json                  # Typescript configuration
├── jest.config.js                 # Jest configuration
├── nest-cli.json                  # NestJS Config file
```

### Getting Started

```bash
$ git clone https://github.com/vobi-io/myid-backend
$ cd myid-backend
$ yarn
$ yarn start
```

## Environment Variables

environment variable is set by NODE_ENV env variable

## Running the app

```bash
# development (starts with development environment)
$ yarn start:develop

# development (starts with development_local environment)
$ yarn start:local

# production mode (starts with staging environment)
$ yarn start:staging
```

Then open [http://localhost:8000/](http://localhost:8000/) to see your app.<br>

Open [http://localhost:8000/api/](http://localhost:8000/api/) to see swagger documentation

Open [http://localhost:8000/graphql/](http://localhost:8000/graphql/) to see graphql playground

### Scripts

#### Start scripts
```bash
$ yarn start # takes NODE_ENV variable from cli
$ yarn start:local # starts with development_local env
$ yarn start:staging # starts with staging env
$ yarn start:prod # takes NODE_ENV variable from cli
$ yarn start:debug # starts NestJS with debug mode
```

#### Build
```bash
$ yarn prebuild # removes built directory
$ yarn build # runs nest build
$ yarn build:staging # building application on staging environment
$ yarn build:prod # building application on production environment
```

#### Testing
```bash
$ yarn test:e2e # runs jest tests
$ yarn test:e2e:coverage # runs jest tests and generates coverage
$ yarn gen:e2e:report # generates test report
```

#### CLI Commands
```bash
$ yarn set:admin <email> <isAdmin> # sets isSuperAdmin field on production db
$ yarn set:admin:dev # sets isSuperAdmin field on development db
$ yarn import:storage # this was used to import google bucket images into s3
```

#### Other Scripts
```bash
$ yarn lint # runs linter on application
$ yarn eject # not used
$ yarn analyze # analyzes sourcemap of application
```

### Hooks
we have pre commit hook which runs linter on application and makes sure everything is okay
before committing changes


### Git Flow

we use [Semantic Commits](https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716) for branch creation and commit messages

example:

```bash
$ git checkout develop
$ git pull
$ git checkout -b feat/some-feature
$ git add .
$ git commit -m "feat: feature description"
$ git push -u origin feat/some-feature
```

and then create pull request to develop branch

![deployment flow](./doc/git-flow.jpg)

### Deployment
Follow this [link](./deployment/README.md)

### DB
![database architecture](./doc/db.png)

### UML
![database architecture](./doc/kvalifika-uml.png)

### Packages
- [@google-cloud/storage](https://www.npmjs.com/package/@google-cloud/storage) - google storage sdk
- [@google-cloud/vision](https://www.npmjs.com/package/@google-cloud/vision) - google vision sdk
- [@nestjs/common](https://www.npmjs.com/package/@nestjs/common) - NestJS core library
- [@nestjs/config](https://www.npmjs.com/package/@nestjs/config) - NestJS configuration library
- [@nestjs/core](https://www.npmjs.com/package/@nestjs/core) - NestJS core library
- [@nestjs/graphql](https://www.npmjs.com/package/@nestjs/graphql) - NestJS Graphql addon
- [@nestjs/jwt](https://www.npmjs.com/package/@nestjs/jwt) - NestJS jwt wrapper
- [@nestjs/mongoose](https://www.npmjs.com/package/@nestjs/mongoose) - nests wrapper to mongoose
- [@nestjs/passport](https://www.npmjs.com/package/@nestjs/passport) - passport wrapper by nestjs
- [@nestjs/platform-express](https://www.npmjs.com/package/@nestjs/platform-express) - NestJS express addon
- [@nestjs/serve-static](https://www.npmjs.com/package/@nestjs/serve-static) - NestJS Static file server
- [@nestjs/swagger](https://www.npmjs.com/package/@nestjs/swagger) - NestJS Swagger documentation
- [@sendgrid/mail](https://www.npmjs.com/package/@sendgrid/mail) - mail service
- [@sentry/node](https://www.npmjs.com/package/@sentry/node) - NodeJS Error logger for production
- [archiver](https://www.npmjs.com/package/archiver) - Archive generator
- [aws-sdk](https://www.npmjs.com/package/aws-sdk) - Aws sdk
- [bcryptjs](https://www.npmjs.com/package/bcryptjs) - String hasher
- [body-parser](https://www.npmjs.com/package/body-parser) - Parses body of request
- [class-validator](https://www.npmjs.com/package/class-validator) - Validates body of request in class
- [dotenv](https://www.npmjs.com/package/dotenv) - Parses env files
- [geoip-lite](https://www.npmjs.com/package/geoip-lite) - Lookups ip location
- [gm](https://www.npmjs.com/package/gm) - Image manipulation library
- [hbs](https://www.npmjs.com/package/hbs) - View engine
- [helmet](https://www.npmjs.com/package/helmet) - Application guard
- [js-levenshtein](https://www.npmjs.com/package/js-levenshtein) - Levenshtein distance calculator
- [json2csv](https://www.npmjs.com/package/json2csv) - Generates csv from json
- [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken) - Decodes encodes jwt
- [mime-types](https://www.npmjs.com/package/mime-types) - Gets info from mimeTypes
- [mjml](https://www.npmjs.com/package/mjml) - Mail view engine
- [moment](https://www.npmjs.com/package/moment) - Nice api for working with dates
- [mongoose](https://www.npmjs.com/package/mongoose) - Mongodb
- [mrz](https://www.npmjs.com/package/mrz) - Mrz parser
- [node-fetch](https://www.npmjs.com/package/node-fetch) - Fetch api in node
- [passport](https://www.npmjs.com/package/passport) - Used by @nestjs/passport
- [passport-jwt](https://www.npmjs.com/package/passport-jwt) - Used by @nestjs/passport
- [psl](https://www.npmjs.com/package/psl) - Gets domain from origin
- [randomatic](https://www.npmjs.com/package/randomatic) - Random string generator
- [request-ip](https://www.npmjs.com/package/request-ip) - Gets ip from request
- [rxjs](https://www.npmjs.com/package/rxjs) - Reactive programming library
- [shortid](https://www.npmjs.com/package/shortid) - Short id generator
- [swagger-ui-express](https://www.npmjs.com/package/swagger-ui-express) - Used by @nestjs/swagger
- [twilio](https://www.npmjs.com/package/twilio) - Messaging api
- [type-graphql](https://www.npmjs.com/package/type-graphql) - Used by @nestjs/graphql
- [ua-parser-js](https://www.npmjs.com/package/ua-parser-js) - User agent parser
- [uuid](https://www.npmjs.com/package/uuid) - Unique id generator

### Yarn packages

- For installing dependensies use ```yarn add <package>```
- To add de dependency use ```yarn add <package> --dev```


### Api versioning guides.

! Moving breaking changes to new version. old one remains unchanged. 

- Example of new version vs old one
http://apidev.kvalifika.com/api/v1.0/company/settings
http://apidev.kvalifika.com/company/settings

### Note
Version incriment should follow release managment principles.
First Digit. Major Change
Second Digit. Minor Change

- Example of Breaking change
http://apidev.kvalifika.com/api/v2.0/company/settings

- Example of Minor change change.
http://apidev.kvalifika.com/api/v2.1/company/settings

