# UISplitViewController Memory Leak

Tested with Xcode 11.5 + iOS 13.5.

Tested with Xcode 12.0 beta 1 + iOS 14.0 beta 1

## Sample Project

The MasterViewController has a Details, selecting one will show the corresponding Detail.

## Regular Width

On regular width, everything works as expected, there is only ever 1 `DetailViewController` alive

## Compact Width

On compact width, the first `DetailViewController` is never deallocated, when switching around, there are always 2 `DetailViewController` alive.

