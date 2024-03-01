Run `make` to demonstrate the issue -- Installing an npm package from a tarball appears to mess up its dependencies

```
❯ git checkout git@github.com:ash14/bug-npm-pack.git
❯ cd bug-npm-pack
❯ make

[...]

Version in package: "17.0.76"
Version in app: "18.2.61"
Failure
npm ERR! code ELSPROBLEMS
npm ERR! invalid: @types/react@18.2.61 /my_app/node_modules/@types/react
my_app@ /my_app
`-- my_package@1.0.0
  `-- @material-ui/core@4.12.4
    +-- @material-ui/styles@4.11.5
    | `-- @types/react@18.2.61 deduped invalid: "^16.8.6 || ^17.0.0" from node_modules/@material-ui/core, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/styles
    +-- @material-ui/system@4.12.2
    | `-- @types/react@18.2.61 deduped invalid: "^16.8.6 || ^17.0.0" from node_modules/@material-ui/core, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/styles, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/system
    +-- @material-ui/types@5.1.0
    | `-- @types/react@18.2.61 deduped invalid: "^16.8.6 || ^17.0.0" from node_modules/@material-ui/core, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/styles, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/system
    +-- @types/react-transition-group@4.4.10
    | `-- @types/react@18.2.61 deduped invalid: "^16.8.6 || ^17.0.0" from node_modules/@material-ui/core, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/styles, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/system
    `-- @types/react@18.2.61 invalid: "^16.8.6 || ^17.0.0" from node_modules/@material-ui/core, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/styles, "^16.8.6 || ^17.0.0" from node_modules/@material-ui/system


npm ERR! A complete log of this run can be found in: /root/.npm/_logs/2024-03-01T05_51_41_826Z-debug-0.log
make: *** [build] Error 1
```

Expected:

```
Version in package: "17.0.76"
Version in app: "17.0.76"
OK
```