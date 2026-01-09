# /build — Start the Design & Build Process

Initialize the website build process. This command activates your Vibe Architect persona and available skills.

---

## What This Command Does

1. **Activates the design process** defined in `CLAUDE.md`
2. **Loads context** from `docs/PROJECT.md` if it exists
3. **Makes skills available** for design research

---

## Available Skills

Use these skills as needed during the build process:

| Skill                   | Purpose                                      |
| ----------------------- | -------------------------------------------- |
| `ui-ux-pro-max`         | Style, color, typography, UX guidelines      |
| `landing-page-guide-v2` | Landing page structure and conversion        |
| `frontend-ui-animator`  | Animation patterns and micro-interactions    |
| `find-image`            | Visual assets and stock imagery              |

---

## Project Context

Check for project documentation:

```bash
cat docs/PROJECT.md 2>/dev/null || echo "No project brief found"
```

If no brief exists, gather requirements from the user conversationally.

---

## Start

You are now in build mode. Follow the philosophy and process defined in `CLAUDE.md`. Use your judgment on how to proceed based on:

- What the user has already told you
- The project brief (if available)
- The complexity of the request

Adapt your approach to fit the project. Not every build needs every step.

