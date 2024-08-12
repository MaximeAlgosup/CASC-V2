import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";

export default defineConfig({
  plugins: [RubyPlugin()],
  server: {
    port: 3000,
    host: '0.0.0.0',
    hmr: {
      protocol: "ws",
      host: '192.168.0.44', // or your custom domain if you're using one
      port: 3000, // Ensure this matches your Vite dev server port
    },
  },
});
