# maghug

A battery-powered device that blinks a LED if it doesn't get hugs from a magnet.

## Bill Of Materials (BOM)

| Part  | Description                             | Mouser link                                                                                                |
| ----: | --------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| U1    | microcontroller, SOT-23 package         | [Microchip PIC10LF322T-E/OT](http://www.mouser.com/search/ProductDetail.aspx?r=579%2dPIC10LF322T%2dE%2fOT) |
| U2    | boost regulator, SOT-23 package         | [Microchip MCP16252T-I/CH](http://www.mouser.com/search/ProductDetail.aspx?r=579%2dMCP16252T%2dI%2fCH)     |
| U3    | hall effect sensor, SC59 package        | [Diodes Inc. AH1802-WG-7](http://www.mouser.com/search/ProductDetail.aspx?r=621%2dAH1802%2dWG%2d7)         |
| L1    | 4.7 µH inductor, surface mount          | [TDK VLS3015ET-4R7M](http://www.mouser.com/search/ProductDetail.aspx?r=810%2dVLS3015ET%2d4R7M)             |
| R1    | 10 KΩ resistor, 0603 package            |                                                                                                            |
| R2    | 1.69 MΩ resistor, 0603 package          |                                                                                                            |
| R3    | 1 MΩ resistor, 0603 package             |                                                                                                            |
| R4    | 1 MΩ resistor, 0603 package             |                                                                                                            |
| R5    | 2.2 KΩ resistor, 0603 package           |                                                                                                            |
| R6    | 1 KΩ resistor, 0603 package             |                                                                                                            |
| C1    | 4.7 µF ceramic capacitor, 0805 package  |                                                                                                            |
| C2    | 0.1 µF ceramic capacitor, 0603 package  |                                                                                                            |
| C3    | 10 µF ceramic capacitor, 0805 package   |                                                                                                            |
| D1    | Red LED, through-hole                   |                                                                                                            |
| D2    | Green LED, through-hole                 |                                                                                                            |
| BAT1  | CR2032 battery holder, surface mount    | [Linx BAT-HLD-001](http://www.mouser.com/search/ProductDetail.aspx?r=712%2dBAT%2dHLD%2d001)                |
| J1    | 0.1" header, 5 pins, through-hole       |                                                                                                            |

## License and copyright

### Hardware

Copyright 2016 Joonas Javanainen joonas.javanainen@gmail.com

The maghug hardware is licensed under a
[Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

Eagle libraries used:

* [Gekkio Eagle Libraries](https://github.com/Gekkio/gekkio-eagle-libraries)
* [SparkFun Electronics Eagle Libraries](https://github.com/sparkfun/SparkFun-Eagle-Libraries)

### Software

Copyright 2016 Joonas Javanainen joonas.javanainen@gmail.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
