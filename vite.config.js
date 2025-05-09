import { defineConfig } from 'vite'
import postcss from './postcss.config.js'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  define: {
    'process.env': process.env
  },
  css: {
    postcss,
  },
  plugins: [react()],
  base: '/front-tlal/',
  build: {
    commonjsOptions: {
      transformMixedEsModules: true,
    }
  } 
})
