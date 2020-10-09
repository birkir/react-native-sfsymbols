# react-native-sfsymbols

Use SF Symbols in React Native for iOS

**Note**: iOS 14 only

## Props

### name
The symbol name you want to display, can be seen in the SF Symbols application.

### weight
The (font) weight of the symbol. Light, regular, medium, bold, etc.

### scale
The scale of the symbol, it will optimise the thickness of detail strokes in the icon for different sizes. Currently small, medium and large.

### multicolor
Enable multicolor or not. Seems to only work with 14.2, and only some symbols.

## Usage

```jsx
import { SFSymbol, SFSymbolWeight, SFSymbolScale } from 'react-native-sfsymbols';

export function Example() {
  return (
    <SFSymbol
      name="thermometer.sun.fill"
      weight={SFSymbolWeight.SEMIBOLD}
      scale={SFSymbolScale.LARGE}
      multicolor={true | false}
      style={{ width: 32, height: 32 }}
    />
  );
}
```

## TODO

- [ ] Add all icons as SVG for iOS 10-13 and Android