# Template Notes

## Bundled Template

The skill bundles `assets/ecnu_report_template.typ` as the template source. Before writing the report body, copy it to `report/ecnu_report_template.typ`, then import that copied file from `report/report.typ`.

Recommended import pattern:

```typst
#import "./ecnu_report_template.typ": conf
```

The goal is for the final report directory to contain both `report/report.typ` and its local template dependency.

## Template Behavior

- The template provides `conf(...)` for the report header, metadata table, page header, and heading numbering.
- First-level headings are rendered in Chinese numbering automatically.
- Lower-level headings are also numbered automatically, so do not hardcode numeric prefixes in heading titles.
- Follow the same rule for other auto-numbered elements such as figures and tables: do not manually add prefixes like `表 1:` or `图 2:` inside captions.
- Do not wrap first-level headings in manual centering constructs; keep them in the template's default document flow.
- The template is intended for A4 course reports with Chinese text and mixed Times New Roman / SimSun typography.
- When transcribing question text into the report, keep the original wording unchanged and only convert the surrounding structure into valid Typst constructs.

## Useful Patterns

### Structure Selection

- If the assignment is given as explicit questions, use a question-answer structure and keep the prompt and answer areas distinct.
- For multi-question homework, make each question a first-level heading and place `== 回答` directly under that question.
- If the assignment is a report brief or experiment writeup, use report sections instead of forcing a question-answer layout.
- Keep the section set minimal and task-driven.

### Ordered Lists

Use Typst `#enum(...)` for ordered subanswers. Keep it compact unless an item is long.

```typst
#enum(
  numbering: "(1)",
  tight: true,
  [第一点],
  [第二点],
)
```

### Hidden Helper Content

If a task genuinely needs the `display` helper described in the original workflow, define it locally in `report/report.typ` before use.

### Figures

Wrap tables, images, and diagrams with `#figure(...)` so they align with the report structure.

For Typst tables, keep the header cells inside one `table.header(...)` call. Prefer:

```typst
table.header([*ID*], [*project*], [*skill*])
```

Do not split the header into repeated standalone entries such as `table.header[*ID*]`, `table.header[*project*]`, and `table.header[*skill*]`.

For figure or table captions, write only the descriptive text and let Typst add the label and numbering automatically.

## Typst-Specific Cautions

- Rewrite LaTeX-only formula syntax into valid Typst syntax.
- For arrow-style expressions that include English words, keep them in math mode and write the words as quoted math text, such as `$"project" -> "manager"$`.
- Use headings, lists, tables, and figures idiomatically instead of trying to emulate Markdown literally.
- Add extra packages only when they solve a concrete presentation problem in the assignment.

## Scope Discipline

The report should look like a completed student submission. Any helper code or package usage must remain subordinate to the assignment content.
