# Styleguide

## CSS

The pattern adopted to do CSS is [BEM](http://getbem.com).

```css
.block { color: #042; } # blocks
.block__elem { color: #042; } # elements
.block--hidden { } # block modifier
.block__elem--mod { } # element modifier
.block--mod .block__elem { } # modifier for elements in a block level
```

### Example

Suppose that you have a form (block) with modifiers called: "theme-xmas" and "simple". Inside this form, one input (element) and one submit (elemento), and the submit with it's own modifier "disabled", to not send the form while it's not filled:

```html
<form class="form form--theme-xmas form--simple">
  <input class="form__input" type="text" />
  <input
    class="form__submit form__submit--disabled"
    type="submit" />
</form>
```

```css
.form { }
.form--theme-xmas { }
.form--simple { }
.form__input { }
.form__submit { }
.form__submit--disabled { }
```
