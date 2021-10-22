module.exports = {
    env: {
        NODE_ENV: '"development"'
    },
    defineConstants: {},
    mini: {},
    h5: {},
    alias: {
        '@/components': path.resolve(__dirname, '..', 'src/components'),
        '@/utils': path.resolve(__dirname, '..', 'src/utils'),
        '@/images': path.resolve(__dirname, '..', 'src/images'),
        '@/project': path.resolve(__dirname, '..', 'project.config.json'),
    },
    sass: {
        resource: path.resolve(__dirname, '..', 'src/styles/variable.scss')
    }
}