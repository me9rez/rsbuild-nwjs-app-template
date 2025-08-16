import { defineConfig } from '@rsbuild/core'
import { pluginPreact } from '@rsbuild/plugin-preact';
import pkg from './package.json'

export default defineConfig({
    source: {
    },
    output: {
        assetPrefix: "./",
        minify: false,
        filenameHash: false,
    },
    html: {
        title: pkg.name,
    },
    plugins: [
        pluginPreact(),
    ],
    tools: {
        rspack: {
            target: "nwjs"
        },
    },
    performance: {
        chunkSplit: {
            strategy: "all-in-one"
        }
    }
})