# Theme catalog

This catalog records the theme directions bundled with `codex-skin`. The project does not copy third-party theme files, logos, screenshots, or brand artwork. Each bundled theme is an original Codex skin implementation using locally authored CSS and SVG previews.

## Bundled themes

| ID | Direction | Notes |
| --- | --- | --- |
| `dream` | Existing custom skin | Image-backed light theme. |
| `kun-stage` | Existing custom skin | Image-backed dark stage theme. |
| `dilraba-rose` | Existing custom skin | Image-backed rose light theme. |
| `dracula` | Popular high-contrast dark palette | Purple and pink accents on a dark surface. |
| `catppuccin-mocha` | Popular pastel dark palette | Soft lavender and rose accents. |
| `nord-aurora` | Popular cool blue-gray palette | Arctic blue surface with green accent. |
| `solarized-light` | Popular low-glare light palette | Warm light background with blue and yellow accents. |
| `github-light` | Common code review palette | Clean light UI with blue and green accents. |
| `tokyo-night` | Popular blue-purple night palette | Deep navy surface with blue and violet accents. |
| `rose-pine` | Popular muted rose palette | Warm dark surface with rose and lavender accents. |
| `matrix-green` | Terminal-style theme direction | Dark green interface with high-contrast green accents. |
| `ocean-calm` | Common calm productivity palette | Light blue-green interface for daily use. |

## Selection rules

- Prefer themes that users already recognize from editors, terminals, and GitHub workflows.
- Keep theme IDs lowercase and stable because users call them from scripts.
- Use local CSS and local preview images only.
- Do not add third-party logos, screenshots, celebrity artwork, or remote image URLs for new generic themes.
- Add a matching `assets/previews/<theme-id>.svg` for every public theme in `themes/<theme-id>.json`.
