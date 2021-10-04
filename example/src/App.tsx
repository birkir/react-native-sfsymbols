import * as React from 'react';
import {View, ScrollView, Animated, Text, Easing} from 'react-native';
import {SFSymbol, SFSymbolScale, SFSymbolWeight} from 'react-native-sfsymbols';

const AnimatedSFSymbol = Animated.createAnimatedComponent(SFSymbol);

function Row({title, children}: any) {
  return (
    <View style={{marginBottom: 32}}>
      <View style={{width: '100%', marginBottom: 8, paddingLeft: 16 }}>
        <Text style={{fontSize: 19}}>{title}</Text>
      </View>
      <View
        style={{
          flexDirection: 'row',
          justifyContent: 'center',
          backgroundColor: '#eee',
          paddingVertical: 16
        }}>
        {children}
      </View>
    </View>
  );
}

export function App() {
  const weights = [
    'ultralight',
    'light',
    'regular',
    'medium',
    'semibold',
    'bold',
    'heavy',
  ];

  const scales = ['small', 'medium', 'large'];

  const rotation = React.useRef(new Animated.Value(0)).current;
  const color = React.useRef(new Animated.Value(0)).current;

  React.useEffect(() => {
    Animated.loop(Animated.spring(rotation, { toValue: 360, useNativeDriver: true })).start();
    Animated.loop(
      Animated.timing(color, { toValue: 360, useNativeDriver: false, duration: 5000, easing: Easing.linear })
    ).start();
  }, []);

  return (
    <ScrollView
      style={{
        marginTop: 64,
        flex: 1,
      }}>
      <Text style={{ paddingLeft: 16, fontSize: 32, fontWeight: '300', marginBottom: 48 }}>React Native SFSymbols</Text>
      <Row title="Weights">
        {weights.map(weight => (
          <SFSymbol
            key={weight}
            name="cloud.sun.rain.fill"
            multicolor
            weight={weight as SFSymbolWeight}
            resizeMode="center"
            size={32}
            style={{
              width: 48,
              height: 48,
            }}
          />
        ))}
      </Row>
      <Row title="Scale">
        {scales.map(scale => (
          <SFSymbol
            key={scale}
            name="thermometer.sun.fill"
            multicolor
            scale={scale as SFSymbolScale}
            resizeMode="center"
            size={32}
            style={{
              width: 64,
              height: 64,
            }}
          />
        ))}
      </Row>
      <Row title="Colors">
        <SFSymbol
          name="tornado"
          color="rebeccapurple"
          size={32}
          style={{
            width: 64,
            height: 64,
          }}
        />
        <SFSymbol
          name="moon.circle.fill"
          color="hotpink"
          size={32}
          style={{
            width: 64,
            height: 64,
          }}
        />
        <SFSymbol
          name="sparkles"
          color="orange"
          size={32}
          style={{
            width: 64,
            height: 64,
          }}
        />
      </Row>
      <Row title="Animated">
        <AnimatedSFSymbol
          name="mustache"
          size={32}
          style={{
            width: 64,
            height: 64,
            transform: [{
              rotateZ: rotation.interpolate({ inputRange: [0, 360], outputRange: ['0deg', '360deg' ]})
            }]
          }}
        />
        <AnimatedSFSymbol
          name="star.fill"
          size={32}
          color={color.interpolate({
            inputRange: [0, 60, 120, 180, 240, 300, 360],
            outputRange: ['rgb(255,0,0)', 'rgb(255,255,0)', 'rgb(0,255,0)', 'rgb(0,255,255)', 'rgb(0,0,255)', 'rgb(255,0,255)', 'rgb(255,0,0)'],
          })}
          style={{
            width: 64,
            height: 64,
          }}
        />
      </Row>
    </ScrollView>
  );
}
