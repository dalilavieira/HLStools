-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cascadeClassifier_rectangles_array9_rom is 
    generic(
             DWIDTH     : integer := 5; 
             AWIDTH     : integer := 12; 
             MEM_SIZE    : integer := 2913
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of cascadeClassifier_rectangles_array9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 34=> "00000", 35 => "01100", 36 to 47=> "00000", 48 => "01100", 49 to 55=> "00000", 
    56 => "10100", 57 to 61=> "00000", 62 => "01111", 63 to 69=> "00000", 70 => "01100", 
    71 to 74=> "00000", 75 => "01011", 76 => "01100", 77 to 104=> "00000", 105 => "10011", 
    106 to 108=> "00000", 109 to 110=> "01011", 111 to 117=> "00000", 118 => "01111", 119 => "00000", 
    120 to 122=> "01011", 123 to 151=> "00000", 152 => "01011", 153 to 159=> "00000", 160 => "01000", 
    161 to 163=> "00000", 164 => "00011", 165 to 175=> "00000", 176 => "01111", 177 => "01010", 
    178 to 186=> "00000", 187 => "01101", 188 to 201=> "00000", 202 => "01011", 203 to 205=> "00000", 
    206 to 207=> "01110", 208 to 214=> "00000", 215 => "01000", 216 => "00000", 217 => "01011", 
    218 to 222=> "00000", 223 => "10101", 224 => "10100", 225 to 229=> "00000", 230 => "10000", 
    231 to 233=> "00000", 234 => "10010", 235 => "01001", 236 to 240=> "00000", 241 to 242=> "00101", 
    243 to 247=> "00000", 248 => "10000", 249 => "10001", 250 to 254=> "00000", 255 => "10011", 
    256 to 260=> "00000", 261 => "00111", 262 to 287=> "00000", 288 => "01111", 289 to 290=> "00000", 
    291 => "00110", 292 to 316=> "00000", 317 to 318=> "01011", 319 => "01010", 320 to 326=> "00000", 
    327 => "10011", 328 to 335=> "00000", 336 to 337=> "01111", 338 to 358=> "00000", 359 => "01111", 
    360 => "01001", 361 => "01011", 362 to 363=> "01110", 364 to 365=> "00000", 366 to 367=> "10010", 
    368 to 372=> "00000", 373 => "00110", 374 to 375=> "00111", 376 to 411=> "00000", 412 => "10101", 
    413 to 414=> "00000", 415 to 416=> "01101", 417 to 443=> "00000", 444 => "01001", 445 to 450=> "00000", 
    451 => "00101", 452 => "00000", 453 => "01000", 454 => "01111", 455 to 458=> "00000", 
    459 to 460=> "00101", 461 => "00011", 462 => "00000", 463 to 464=> "10010", 465 to 472=> "00000", 
    473 => "01110", 474 to 477=> "00000", 478 => "01110", 479 to 480=> "00000", 481 => "01001", 
    482 to 489=> "00000", 490 => "01111", 491 to 519=> "00000", 520 => "00101", 521 => "01000", 
    522 to 524=> "00000", 525 => "01110", 526 to 528=> "00000", 529 => "10001", 530 to 541=> "00000", 
    542 => "01111", 543 to 545=> "00000", 546 => "10001", 547 => "00000", 548 to 549=> "10001", 
    550 to 553=> "00000", 554 => "01001", 555 to 558=> "00000", 559 => "10010", 560 to 586=> "00000", 
    587 => "01101", 588 => "01111", 589 to 590=> "00000", 591 => "10011", 592 => "01110", 
    593 => "00000", 594 to 595=> "10100", 596 to 623=> "00000", 624 => "01001", 625 => "01101", 
    626 to 654=> "00000", 655 => "01001", 656 to 658=> "00000", 659 => "01001", 660 to 664=> "00000", 
    665 to 666=> "01001", 667 to 674=> "00000", 675 => "01000", 676 to 677=> "00000", 678 => "01000", 
    679 to 680=> "10011", 681 to 682=> "00000", 683 => "01001", 684 to 685=> "00000", 686 => "01011", 
    687 to 690=> "00000", 691 => "01011", 692 to 693=> "00000", 694 => "01011", 695 to 698=> "00000", 
    699 to 700=> "00110", 701 to 703=> "00000", 704 to 706=> "01001", 707 to 721=> "00000", 722 => "00110", 
    723 to 725=> "00000", 726 => "01101", 727 to 750=> "00000", 751 => "10000", 752 => "00101", 
    753 to 755=> "00000", 756 to 757=> "01111", 758 => "01011", 759 to 760=> "00000", 761 => "01011", 
    762 to 769=> "00000", 770 => "01110", 771 to 774=> "00000", 775 => "00111", 776 to 777=> "00000", 
    778 => "01111", 779 to 783=> "00000", 784 => "00110", 785 => "00000", 786 => "00010", 
    787 to 799=> "00000", 800 => "01100", 801 to 806=> "00000", 807 => "01010", 808 to 818=> "00000", 
    819 => "01111", 820 to 832=> "00000", 833 => "01000", 834 to 850=> "00000", 851 => "00011", 
    852 to 854=> "00000", 855 => "01011", 856 to 858=> "00000", 859 => "01111", 860 => "00000", 
    861 to 862=> "01111", 863 to 864=> "00000", 865 => "00111", 866 => "01001", 867 => "00000", 
    868 => "00110", 869 to 875=> "00000", 876 => "01111", 877 to 910=> "00000", 911 => "01000", 
    912 => "01001", 913 to 919=> "00000", 920 => "01101", 921 to 945=> "00000", 946 => "01111", 
    947 => "10011", 948 => "00000", 949 to 950=> "01010", 951 => "01001", 952 => "00000", 
    953 => "10001", 954 => "00000", 955 => "10000", 956 => "00000", 957 => "01100", 
    958 => "00000", 959 => "01101", 960 to 961=> "00000", 962 => "10000", 963 to 964=> "00000", 
    965 to 966=> "01100", 967 => "00000", 968 => "01011", 969 to 976=> "00000", 977 => "10101", 
    978 => "10000", 979 => "00000", 980 to 981=> "10000", 982 to 989=> "00000", 990 => "01111", 
    991 => "01011", 992 to 1008=> "00000", 1009 => "01001", 1010 to 1011=> "00000", 1012 => "00111", 
    1013 => "00110", 1014 to 1015=> "00000", 1016 to 1017=> "10001", 1018 => "01101", 1019 to 1020=> "00000", 
    1021 => "00011", 1022 to 1043=> "00000", 1044 => "01111", 1045 => "00000", 1046 to 1047=> "00011", 
    1048 to 1056=> "00000", 1057 => "10000", 1058 => "01000", 1059 to 1073=> "00000", 1074 => "01110", 
    1075 to 1079=> "00000", 1080 to 1081=> "01110", 1082 => "00000", 1083 => "01110", 1084 to 1086=> "00000", 
    1087 => "10000", 1088 to 1093=> "00000", 1094 to 1095=> "10100", 1096 => "00010", 1097 => "00000", 
    1098 => "00111", 1099 => "00000", 1100 => "00011", 1101 to 1136=> "00000", 1137 => "01100", 
    1138 => "01011", 1139 => "01100", 1140 => "00000", 1141 => "01110", 1142 to 1160=> "00000", 
    1161 => "00100", 1162 to 1176=> "00000", 1177 => "01011", 1178 => "00000", 1179 to 1180=> "01001", 
    1181 => "10011", 1182 to 1183=> "00000", 1184 => "01001", 1185 to 1208=> "00000", 1209 to 1210=> "10101", 
    1211 => "10110", 1212 => "01011", 1213 to 1225=> "00000", 1226 => "00101", 1227 to 1232=> "00000", 
    1233 => "00101", 1234 => "00100", 1235 to 1237=> "00000", 1238 => "00101", 1239 to 1242=> "00000", 
    1243 => "10010", 1244 to 1255=> "00000", 1256 => "01101", 1257 to 1261=> "00000", 1262 => "01100", 
    1263 => "00000", 1264 to 1266=> "01011", 1267 to 1288=> "00000", 1289 => "01101", 1290 => "00000", 
    1291 => "01101", 1292 => "00000", 1293 => "01101", 1294 => "00000", 1295 => "01111", 
    1296 => "00000", 1297 to 1298=> "01101", 1299 => "10001", 1300 => "00000", 1301 => "01111", 
    1302 => "01100", 1303 => "10011", 1304 => "01101", 1305 => "10101", 1306 => "01111", 
    1307 => "01100", 1308 => "10100", 1309 to 1311=> "00000", 1312 => "01001", 1313 to 1314=> "00000", 
    1315 => "01110", 1316 to 1324=> "00000", 1325 to 1326=> "00110", 1327 to 1328=> "00000", 1329 to 1330=> "01110", 
    1331 to 1334=> "00000", 1335 => "10011", 1336 => "00100", 1337 to 1347=> "00000", 1348 => "10010", 
    1349 to 1352=> "00000", 1353 => "10000", 1354 => "01110", 1355 => "10000", 1356 to 1369=> "00000", 
    1370 => "10011", 1371 => "10001", 1372 => "10000", 1373 to 1376=> "00000", 1377 => "01001", 
    1378 to 1388=> "00000", 1389 to 1390=> "00111", 1391 to 1406=> "00000", 1407 => "01100", 1408 => "00111", 
    1409 to 1410=> "00000", 1411 => "01011", 1412 to 1423=> "00000", 1424 => "01111", 1425 to 1426=> "00000", 
    1427 => "01101", 1428 to 1447=> "00000", 1448 => "10010", 1449 to 1450=> "00000", 1451 => "10101", 
    1452 to 1458=> "00000", 1459 => "10101", 1460 to 1467=> "00000", 1468 to 1469=> "00111", 1470 => "01000", 
    1471 => "00000", 1472 => "10100", 1473 to 1481=> "00000", 1482 => "00110", 1483 => "10000", 
    1484 to 1485=> "10100", 1486 => "00000", 1487 => "10100", 1488 => "01001", 1489 => "01111", 
    1490 to 1491=> "10000", 1492 => "00000", 1493 => "10000", 1494 to 1495=> "00000", 1496 => "01010", 
    1497 => "01001", 1498 to 1499=> "00000", 1500 => "01110", 1501 => "00000", 1502 to 1503=> "01110", 
    1504 to 1505=> "01111", 1506 to 1509=> "00000", 1510 => "01010", 1511 => "00101", 1512 => "00000", 
    1513 => "01000", 1514 => "00000", 1515 => "01000", 1516 to 1519=> "00000", 1520 to 1521=> "01011", 
    1522 to 1529=> "00000", 1530 => "10000", 1531 to 1541=> "00000", 1542 => "01011", 1543 to 1547=> "00000", 
    1548 => "00111", 1549 to 1555=> "00000", 1556 => "01010", 1557 to 1564=> "00000", 1565 => "10101", 
    1566 => "01011", 1567 to 1570=> "00000", 1571 => "00100", 1572 to 1575=> "00000", 1576 => "01001", 
    1577 => "01010", 1578 to 1582=> "00000", 1583 => "01000", 1584 to 1595=> "00000", 1596 => "01011", 
    1597 to 1604=> "00000", 1605 => "10101", 1606 => "00000", 1607 => "10010", 1608 to 1609=> "00000", 
    1610 => "10010", 1611 => "00000", 1612 => "00110", 1613 to 1647=> "00000", 1648 => "01010", 
    1649 to 1650=> "00000", 1651 => "01100", 1652 => "01111", 1653 => "00110", 1654 to 1656=> "00000", 
    1657 => "10010", 1658 => "00110", 1659 => "00000", 1660 => "10010", 1661 to 1667=> "00000", 
    1668 => "00101", 1669 => "10101", 1670 to 1676=> "00000", 1677 => "00111", 1678 to 1679=> "00000", 
    1680 => "01100", 1681 to 1682=> "00000", 1683 to 1684=> "01001", 1685 => "00011", 1686 to 1701=> "00000", 
    1702 => "01010", 1703 to 1712=> "00000", 1713 => "01100", 1714 to 1719=> "00000", 1720 => "10101", 
    1721 to 1725=> "00000", 1726 => "01100", 1727 to 1750=> "00000", 1751 => "10000", 1752 to 1762=> "00000", 
    1763 => "01000", 1764 => "01001", 1765 => "00000", 1766 => "10011", 1767 => "00000", 
    1768 => "01001", 1769 => "01011", 1770 to 1785=> "00000", 1786 => "10000", 1787 to 1788=> "00000", 
    1789 => "01001", 1790 => "00000", 1791 => "00111", 1792 to 1799=> "00000", 1800 => "01111", 
    1801 to 1804=> "00000", 1805 => "00111", 1806 to 1809=> "00000", 1810 => "01001", 1811 to 1812=> "00000", 
    1813 => "01011", 1814 to 1815=> "00000", 1816 => "10101", 1817 to 1819=> "00000", 1820 to 1821=> "10101", 
    1822 to 1829=> "00000", 1830 => "00111", 1831 to 1832=> "00000", 1833 => "10010", 1834 to 1836=> "00000", 
    1837 => "01010", 1838 => "01001", 1839 => "00000", 1840 to 1841=> "10000", 1842 to 1861=> "00000", 
    1862 => "01111", 1863 to 1873=> "00000", 1874 => "00101", 1875 to 1879=> "00000", 1880 => "01001", 
    1881 to 1882=> "00000", 1883 => "01001", 1884 => "01011", 1885 to 1891=> "00000", 1892 => "01001", 
    1893 => "01000", 1894 to 1899=> "00000", 1900 to 1901=> "10000", 1902 to 1912=> "00000", 1913 => "01010", 
    1914 to 1915=> "01101", 1916 => "00000", 1917 => "10000", 1918 to 1939=> "00000", 1940 => "01110", 
    1941 to 1945=> "00000", 1946 => "01001", 1947 => "10101", 1948 => "00000", 1949 => "01100", 
    1950 to 1951=> "01111", 1952 to 1955=> "00000", 1956 => "00100", 1957 => "00000", 1958 => "00111", 
    1959 to 1962=> "00000", 1963 => "00111", 1964 to 1966=> "00000", 1967 => "01000", 1968 to 1977=> "00000", 
    1978 => "01100", 1979 to 1984=> "00000", 1985 => "10101", 1986 to 1991=> "00000", 1992 => "01100", 
    1993 to 2002=> "00000", 2003 => "01001", 2004 => "01011", 2005 => "00010", 2006 to 2008=> "00000", 
    2009 => "01000", 2010 to 2014=> "00000", 2015 => "10010", 2016 => "00000", 2017 => "10001", 
    2018 => "00000", 2019 to 2021=> "01100", 2022 to 2024=> "00000", 2025 => "01111", 2026 to 2035=> "00000", 
    2036 => "01100", 2037 to 2038=> "00000", 2039 => "01110", 2040 to 2041=> "01100", 2042 => "01001", 
    2043 to 2045=> "00000", 2046 to 2047=> "00110", 2048 to 2060=> "00000", 2061 => "10001", 2062 to 2066=> "00000", 
    2067 => "01011", 2068 to 2069=> "00000", 2070 => "01011", 2071 => "00000", 2072 => "01011", 
    2073 => "10100", 2074 => "01011", 2075 => "00000", 2076 => "01011", 2077 to 2083=> "00000", 
    2084 => "00010", 2085 to 2088=> "00000", 2089 => "01111", 2090 to 2091=> "01011", 2092 => "01100", 
    2093 to 2094=> "00000", 2095 => "00100", 2096 => "01011", 2097 to 2101=> "00000", 2102 => "01000", 
    2103 => "01111", 2104 => "10000", 2105 => "00111", 2106 => "01000", 2107 to 2141=> "00000", 
    2142 => "01101", 2143 to 2145=> "00000", 2146 => "01011", 2147 to 2152=> "00000", 2153 => "01101", 
    2154 to 2163=> "00000", 2164 => "10010", 2165 to 2166=> "10011", 2167 => "10101", 2168 to 2169=> "00000", 
    2170 => "01001", 2171 to 2173=> "00000", 2174 => "01111", 2175 to 2180=> "00000", 2181 => "00101", 
    2182 to 2185=> "00000", 2186 => "00101", 2187 to 2188=> "00000", 2189 => "00101", 2190 to 2191=> "00000", 
    2192 => "01100", 2193 to 2196=> "00000", 2197 => "01101", 2198 => "00000", 2199 => "01101", 
    2200 to 2203=> "00000", 2204 => "01110", 2205 to 2206=> "01101", 2207 to 2229=> "00000", 2230 => "01110", 
    2231 to 2237=> "00000", 2238 => "01010", 2239 to 2244=> "00000", 2245 => "01111", 2246 to 2251=> "00000", 
    2252 => "01111", 2253 => "10101", 2254 to 2263=> "00000", 2264 => "10001", 2265 => "01001", 
    2266 to 2272=> "00000", 2273 => "01101", 2274 => "00000", 2275 => "01010", 2276 to 2277=> "00000", 
    2278 => "01110", 2279 => "01111", 2280 to 2286=> "00000", 2287 => "10100", 2288 => "00000", 
    2289 to 2290=> "10000", 2291 to 2292=> "10010", 2293 to 2317=> "00000", 2318 => "01110", 2319 => "00000", 
    2320 => "01110", 2321 => "10000", 2322 => "01111", 2323 to 2328=> "00000", 2329 => "10101", 
    2330 to 2336=> "00000", 2337 to 2339=> "01111", 2340 => "00000", 2341 => "10110", 2342 to 2345=> "00000", 
    2346 to 2347=> "01101", 2348 to 2349=> "00000", 2350 => "01111", 2351 => "10000", 2352 to 2353=> "00000", 
    2354 => "01110", 2355 => "00000", 2356 => "00111", 2357 to 2364=> "00000", 2365 => "10100", 
    2366 to 2367=> "00000", 2368 to 2369=> "01110", 2370 to 2373=> "00000", 2374 => "01100", 2375 to 2377=> "00000", 
    2378 => "01011", 2379 to 2381=> "00000", 2382 to 2383=> "01011", 2384 to 2385=> "00000", 2386 => "01010", 
    2387 to 2394=> "00000", 2395 => "01111", 2396 to 2411=> "00000", 2412 => "00100", 2413 to 2424=> "00000", 
    2425 => "01110", 2426 to 2427=> "00000", 2428 to 2429=> "01100", 2430 to 2432=> "00000", 2433 => "01011", 
    2434 to 2435=> "00000", 2436 to 2437=> "01100", 2438 => "01101", 2439 to 2440=> "00000", 2441 => "01110", 
    2442 to 2444=> "00000", 2445 => "10001", 2446 to 2447=> "00000", 2448 => "01011", 2449 to 2455=> "00000", 
    2456 to 2457=> "01111", 2458 to 2459=> "00000", 2460 => "01100", 2461 to 2462=> "00000", 2463 => "01100", 
    2464 to 2478=> "00000", 2479 => "01100", 2480 to 2484=> "00000", 2485 => "01011", 2486 to 2489=> "00000", 
    2490 => "10011", 2491 => "00111", 2492 to 2493=> "00110", 2494 to 2495=> "00000", 2496 => "01011", 
    2497 to 2500=> "00000", 2501 => "01010", 2502 to 2509=> "00000", 2510 => "00011", 2511 => "01001", 
    2512 => "00000", 2513 => "01111", 2514 to 2534=> "00000", 2535 to 2536=> "01011", 2537 => "01100", 
    2538 => "00000", 2539 to 2540=> "01100", 2541 => "00000", 2542 => "01100", 2543 to 2544=> "01110", 
    2545 to 2552=> "00000", 2553 => "01001", 2554 => "00000", 2555 => "01110", 2556 to 2567=> "00000", 
    2568 => "01010", 2569 to 2579=> "00000", 2580 => "01111", 2581 to 2582=> "10011", 2583 to 2584=> "00101", 
    2585 to 2586=> "00000", 2587 => "01011", 2588 => "00000", 2589 to 2590=> "01101", 2591 => "00000", 
    2592 => "10000", 2593 to 2594=> "00000", 2595 => "01000", 2596 => "00000", 2597 to 2598=> "01101", 
    2599 to 2607=> "00000", 2608 => "01100", 2609 to 2610=> "00000", 2611 => "01001", 2612 => "01011", 
    2613 to 2615=> "00000", 2616 => "01001", 2617 to 2625=> "00000", 2626 => "10011", 2627 to 2640=> "00000", 
    2641 => "01101", 2642 => "01011", 2643 to 2644=> "00000", 2645 to 2646=> "01111", 2647 => "00000", 
    2648 => "01000", 2649 to 2652=> "00000", 2653 => "01110", 2654 to 2655=> "00000", 2656 => "00011", 
    2657 to 2669=> "00000", 2670 => "01101", 2671 => "01100", 2672 to 2673=> "00000", 2674 => "01011", 
    2675 => "10000", 2676 to 2678=> "00000", 2679 => "01001", 2680 to 2705=> "00000", 2706 => "00111", 
    2707 => "01001", 2708 to 2710=> "00000", 2711 => "00101", 2712 to 2717=> "00000", 2718 => "10101", 
    2719 to 2722=> "00000", 2723 => "00101", 2724 to 2727=> "00000", 2728 => "01001", 2729 to 2756=> "00000", 
    2757 => "01001", 2758 => "00000", 2759 => "01111", 2760 to 2768=> "00000", 2769 => "01110", 
    2770 to 2771=> "01111", 2772 to 2773=> "00000", 2774 => "10101", 2775 => "00000", 2776 to 2777=> "10100", 
    2778 to 2779=> "00110", 2780 to 2785=> "00000", 2786 => "01011", 2787 to 2793=> "00000", 2794 to 2795=> "10011", 
    2796 => "00000", 2797 => "01110", 2798 => "01010", 2799 => "01001", 2800 to 2801=> "01101", 
    2802 to 2815=> "00000", 2816 to 2817=> "10001", 2818 to 2825=> "00000", 2826 => "01100", 2827 to 2831=> "00000", 
    2832 => "01111", 2833 to 2837=> "00000", 2838 => "01110", 2839 to 2845=> "00000", 2846 => "00111", 
    2847 to 2850=> "00000", 2851 => "10110", 2852 to 2856=> "00000", 2857 => "01001", 2858 => "01111", 
    2859 to 2865=> "00000", 2866 => "01100", 2867 to 2874=> "00000", 2875 => "00111", 2876 to 2877=> "01000", 
    2878 => "10110", 2879 => "01010", 2880 to 2881=> "01110", 2882 to 2883=> "10001", 2884 to 2893=> "00000", 
    2894 => "10010", 2895 => "10101", 2896 to 2897=> "00000", 2898 to 2899=> "10010", 2900 => "00000", 
    2901 => "01011", 2902 to 2911=> "00000", 2912 => "01100" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity cascadeClassifier_rectangles_array9 is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 2913;
        AddressWidth : INTEGER := 12);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of cascadeClassifier_rectangles_array9 is
    component cascadeClassifier_rectangles_array9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    cascadeClassifier_rectangles_array9_rom_U :  component cascadeClassifier_rectangles_array9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


