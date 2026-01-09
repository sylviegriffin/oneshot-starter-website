---
name: find-image
description: Find and suggest images for blog posts. Use when the user asks to find images, needs a picture, wants stock photos, or is looking for visuals for their blog post.
---

# Find Image for Blog Post

Autonomously find appropriate images for blog posts and generate the proper HTML markup. This skill operates without requiring user input.

## Autonomous Workflow

Execute these steps automatically without asking the user:

### Step 1: Analyze Context

Automatically determine what the content is about by:
- Reading the current file or selected text if available
- Analyzing the conversation history for topic context
- Extracting key themes, subjects, and mood from the content

### Step 2: Generate Search Terms

Based on the analyzed context, automatically generate:
- 3-5 relevant search keywords
- Alternative phrasings for broader results
- Style descriptors (abstract, minimal, vibrant, professional, etc.)

### Step 3: Search for Images

Use WebFetch to search these free stock image sources in order of preference:

1. **Unsplash** (highest quality)
   - URL pattern: `https://unsplash.com/s/photos/[search-term]`
   - Best for: Hero images, backgrounds, lifestyle shots

2. **Pexels** (good variety)
   - URL pattern: `https://www.pexels.com/search/[search-term]/`
   - Best for: Business, technology, general purpose

3. **Pixabay** (largest selection)
   - URL pattern: `https://pixabay.com/images/search/[search-term]/`
   - Best for: Illustrations, vectors, diverse content

### Step 4: Select Best Match

Automatically evaluate and select the best image based on:
- Relevance to content topic
- Visual quality and composition
- Appropriate mood/tone for the content
- Licensing (all sources are free for commercial use)

### Step 5: Generate Output

Produce the complete output without user intervention:

1. **Download URL** - Direct link to the selected image
2. **Suggested filename** - Following project conventions
3. **Complete HTML markup** - Ready to paste into content
4. **Alternative options** - 2-3 backup choices if primary doesn't fit

## Image Guidelines

- **Location**: `/assets/images/`
- **Preferred formats**: WebP (best compression), PNG (diagrams/screenshots), JPG (photos)
- **Max size**: < 500KB (images are auto-optimized via pre-commit hook)
- **Alt text requirements**:
  - Be descriptive and specific
  - Relate to surrounding content
  - Aim for 125 characters or less
  - Don't start with "Image of" or "Picture of"
  - Include relevant keywords naturally

## Filename Convention

Generate filenames automatically using this pattern:
```
[topic]-[descriptor]-[type].webp
```

Examples:
- `ai-neural-network-hero.webp`
- `python-security-concept.webp`
- `startup-team-collaboration.webp`

## Output Format

Deliver this complete output automatically:

```markdown
## Recommended Image

**Selected:** [Image title/description from source]
**Source:** [Unsplash/Pexels/Pixabay]
**Download:** [Direct URL to image]

**Filename:** `[generated-filename].webp`

**HTML Markup:**
```html
<figure>
  <img src="/assets/images/[filename]" alt="[Auto-generated descriptive alt text]">
  <figcaption>[Context-appropriate caption]</figcaption>
</figure>
```

### Alternative Options

1. [Alternative image 1 with URL]
2. [Alternative image 2 with URL]
3. [Alternative image 3 with URL]
```

## Technical Diagrams

For technical content, automatically determine if a diagram would be more appropriate than a photo:

**Indicators for diagram recommendation:**
- Architecture discussions
- Process flows
- System components
- Data relationships
- Step-by-step procedures

**Diagram tool recommendations:**
- **Excalidraw** (https://excalidraw.com) - Hand-drawn style
- **Draw.io** (https://draw.io) - Professional flowcharts
- **Mermaid** - Code-based diagrams (can be generated inline)

When a diagram is more appropriate, generate a Mermaid diagram automatically instead of searching for stock images.

## Example Autonomous Execution

**Input context:** User is writing about "Building AI Agents with Claude"

**Automatic analysis:**
- Topic: AI development, agents, Claude/Anthropic
- Mood: Technical, innovative, professional
- Search terms: "artificial intelligence", "neural network abstract", "AI technology"

**Automatic output:**

## Recommended Image

**Selected:** Abstract AI neural network visualization
**Source:** Unsplash
**Download:** https://unsplash.com/photos/[specific-photo-id]

**Filename:** `claude-ai-agent-neural.webp`

**HTML Markup:**
```html
<figure>
  <img src="/assets/images/claude-ai-agent-neural.webp" alt="Abstract neural network visualization with interconnected nodes representing AI agent architecture">
  <figcaption>Visualization of AI agent neural pathways</figcaption>
</figure>
```

### Alternative Options

1. https://unsplash.com/photos/[alt-1] - Robot hand reaching
2. https://pexels.com/photo/[alt-2] - Digital brain concept
3. https://pixabay.com/photos/[alt-3] - Technology abstract blue
