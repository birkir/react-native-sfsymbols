import React from "react";
import {
  processColor,
  requireNativeComponent,
  StyleProp,
  ViewStyle,
} from "react-native";

export enum SFSymbolWeight {
  ULTRALIGHT = "ultralight",
  LIGHT = "light",
  THIN = "thin",
  REGULAR = "regular",
  MEDIUM = "medium",
  SEMIBOLD = "semibold",
  BOLD = "bold",
  HEAVY = "heavy",
}

export enum SFSymbolScale {
  SMALL = "small",
  MEDIUM = "medium",
  LARGE = "large",
}

interface SFSymbolProps {
  name: string;
  color?: string;
  style?: StyleProp<ViewStyle>;
  weight?: SFSymbolWeight;
  scale?: SFSymbolScale;
  multicolor?: boolean;
}

type NativeSFSymbolProps = Omit<SFSymbolProps, "color" | "name"> & {
  color: number | symbol;
  systemName: string;
};

const RNSFSymbol = requireNativeComponent<NativeSFSymbolProps>("RNSFSymbol");

export class SFSymbol extends React.Component<SFSymbolProps> {
  render() {
    const { name, color, ...props } = this.props;
    return (
      <RNSFSymbol {...props} systemName={name} color={processColor(color)} />
    );
  }
}
