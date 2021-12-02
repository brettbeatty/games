module.exports = {
  mode: 'jit',
  purge: [
    'lib/games_web/**/*.{ex,heex}'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        theme: {
          dark: 'var(--theme-color-dark)',
          DEFAULT: 'var(--theme-color)',
          light: 'var(--theme-color-light)'
        }
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
