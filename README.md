# Thank you, next!

Emacs helper plugin inspired by the wonderful [Scalpel](https://github.com/wincent/scalpel) plugin for Vim. When `thank-you-next` is called, it marks the word below your cursor, and asks you for a replacement string. It then cycles through all the instances within the file. You simply have to confirm / deny by pressing `y`/ `n`. When done, the cursor is set back to the initial context.


## Installation

### Manual Installation

Put the `thank-you-next.el` file into your `emacs.d` directory (or wherever you please) and load it within your `init.el`:

```Elisp
(load-file "path/to/thank-you-next.el")

```

Bind to hotkey as usual:

```Elisp
(global-set-key "<YourHotkey>" 'thank-you-next)
```


## Overview

| Command           | Description                                                                                          |
| :---              | :---                                                                                                 |
| `thank-you-next`  | Run the base command                                                                                 |



## Authors

* **Thomas Johannesmeyer** - [www.geeky.gent](http://geeky.gent)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Support

The framework and code are provided as-is, but if you need help or have suggestions, you can contact me anytime at [opensource@geeky.gent](mailto:opensource@geeky.gent?subject=Thank you, next!).


## I'd like to hear from you

If you have got any suggestions, please feel free to share them with me. :)
