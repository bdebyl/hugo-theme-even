# Even Theme for Hugo
This is my working fork of the
[hugo-even-theme](https://github.com/olOwOlo/hugo-theme-even). My focus was to
remove all of the, undesirable, JavaScript including external dependencies that
added little to no useful functionality to the site.

## CSS
The theme utilizes [Sass](https://sass-lang.com/) to build the CSS for the
site. The Makefile in this repository utilizes a C-wrapper called
[sassc](https://github.com/sass/sassc).

## Building
| Make Target  | Description                                                      |
|--------------|------------------------------------------------------------------|
| `make`       | Runs the default tarket, which is to build the `style.css` files |
| `make clean` | Cleans the setup (`rm`'s the `style.css` file')                  |
