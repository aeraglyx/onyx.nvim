return {
    none = "NONE",

    null = "#0e0e0e",
    void = "#141414",
    deep = "#191919",
    base = "#1f1f1f",

    smol = "#383838",
    dim  = "#525252",
    meh  = "#8b8b8b",
    text = "#c8c8c8",

    red   = "#f99dc5",
    peach = "#d6b6a4",
    green = "#bec1a0",
    teal  = "#a1c8bb",
    blue  = "#a2c3d6",
    purp  = "#beb9d9",

    -- based on the oklab color space
    -- reference: <https://oklch.com>

    -- greyscale lands on this grid:
    -- l = 0.5 + 0.02475 * (i - 0.5)

    -- colors (red is more saturated):
    -- l = 0.8, c = 0.045, h = 52.5 + 60 * i
}
