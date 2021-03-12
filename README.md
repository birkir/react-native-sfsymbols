# react-native-sfsymbols

Use SF Symbols in React Native for iOS

- ⚠️ iOS 14+ only ([& more soon](https://github.com/birkir/react-native-sfsymbols/issues/1))
- 💔 [Android or other platforms cannot be supported](https://github.com/birkir/react-native-sfsymbols/issues/3)

![iOS Simulator with icons example](https://media.giphy.com/media/5gB4qLjkuYwVn10O77/giphy.gif)

## Setup

```console
npm install --save react-native-sfsymbols

# --- or ---

yarn add react-native-sfsymbols
```

_Don't forget to run `cd ios && pod install && cd ..` after that !_

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-sfsymbols` and add `RNSfsymbols.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSfsymbols.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

</details>

## Usage

```jsx
import {
  SFSymbol,
  SFSymbolWeight,
  SFSymbolScale,
} from "react-native-sfsymbols";

export function Example() {
  return (
    <SFSymbol
      name="thermometer.sun.fill"
      weight={SFSymbolWeight.SEMIBOLD}
      scale={SFSymbolScale.LARGE}
      color="red"
      multicolor={true | false}
      style={{ width: 32, height: 32 }}
    />
  );
}
```

They can be animated with Animated

```jsx
import { Animated } from "react-native";
import { SFSymbol } from "react-native-sfsymbols";

const AnimatedSFSymbol = Animated.createAnimatedComponent(SFSymbol);

<AnimatedSFSymbol
  name="sun.min.fill"
  style={{
    opacity: new Animated.Value(1),
  }}
/>;
```

## Props

### name

The symbol name you want to display, can be seen in the SF Symbols application.

## color

The color of the symbol written as a hex or color value.

### weight

The (font) weight of the symbol. Light, regular, medium, bold, etc.

### scale

The scale of the symbol, it will optimise the thickness of detail strokes in the icon for different sizes. Currently small, medium and large.

### multicolor

Enable multicolor or not. Seems to only work with 14.2, and only some symbols.
