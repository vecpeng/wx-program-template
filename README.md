# WX-programme-template
This is a template project for wx mini program, using Taro, Typescript, Vue3, scss and webpack.

## Structure
```
.
├── README.md
├── babel.config.js
├── config
│   ├── dev.js
│   ├── index.js
│   └── prod.js
├── global.d.ts
├── node_modules
├── package-lock.json
├── package.json
├── page.sh
├── project.config.json
├── src
│   ├── app.config.ts
│   ├── app.scss
│   ├── app.ts
│   ├── images
│   ├── index.html
│   ├── pages
│   └── styles
└── tsconfig.json
```
## Get started
You can run `npm run build:weapp -- --watch`,
and any changes with your file will be watched.
And you also can run `taro build --type weapp`to generate a mini-program project in the dist directory, which can be used in production environment. 
## Features
- You can run `./page.sh ${pageName}` to generate a page directory and three file automatically.
  When you run
  ```./page.sh index```, you will get a directory trees just like:
  ```
  src/pages/index
  ├── index.config.ts
  ├── index.scss
  └── index.vue
  ```
- Support for absolute paths instead of a mess relative paths.
For example, in the src/pages/index.vue
  ```js
  import { indexImage } from '@/images/index_icon.  png'
  ```
  if you would like to add more alias, modify the alias configuration in   ```config/dev.json```