module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    "./*.html",
    "./ecommerce/*.html",
    "./assets/**/*.js",
  ],
  theme: {
    extend: {
      colors: {
        light: "#dddded",
        accent: "#120e30",
        accentH: "#171338",
        thead: "#f7f8f9",
        textHeading: "#131438",
        textColor: "#6b7280",
      },
    },
  },
  plugins: [require("tailgrids/plugin")],
};
