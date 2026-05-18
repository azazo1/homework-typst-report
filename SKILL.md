---
name: homework-typst-report
description: Write concise Chinese homework reports in Typst using the bundled ECNU-style report template. Use when Codex needs to answer course assignments, lab reports, theory exercises, or structured homework questions by producing or revising `report/report.typ`, especially when the report should restate the prompt, follow a formal student-assignment tone, and fit an existing course report style instead of sounding like tooling instructions or AI meta commentary.
---

# Homework Typst Report

Produce the final answer as a Typst report at `report/report.typ`. Keep `report/` limited to `.typ` files only, and place every other report-referenced resource under the project-root `assets/` directory. Keep the report focused on the assignment content rather than on the act of writing the report.

## Workflow

1. Confirm that `report/report.typ` is the target output file.
2. Reuse the bundled template source at `assets/ecnu_report_template.typ`. If the template is missing, stop and tell the user.
3. Copy the template into `report/ecnu_report_template.typ` before writing the report body.
4. Ensure the project-root `assets/` directory exists before placing any non-Typst report resources.
5. Place any additional images, datasets, generated diagrams, attachments, or helper files referenced by the report under the project-root `assets/` directory.
6. Keep `report/` limited to `.typ` files only. Do not place images or other non-Typst resources there.
7. Fill the `date` field in `conf(...)` whenever writing the report metadata. Use `datetime(year: ..., month: ..., day: ...)` with year-month-day precision only.
8. Read the assignment prompt, required subquestions, and any project artifacts that the report must discuss.
9. Determine whether the task is primarily a question-answer assignment or a report-style experiment writeup.
10. If the source material contains explicit question text, convert that question text into appropriate Typst structure without changing a single word of the original wording.
11. If code execution is part of the homework, create or update a project-root `justfile` so the relevant execution steps and result generation can be reproduced easily.
12. If code execution is part of the homework, make sure the report presents the execution inputs and outputs clearly enough for the result to be understood and checked.
13. If it is report-style, organize the document as an experiment report instead of forcing a question-answer format.
14. Compile or preview the report with the project root as the Typst compile root rather than the `report/` directory.
15. After compiling the report, review the rendered PDF visually by reading page images rather than relying only on source text or extracted PDF text.
16. If the rendered pages look cramped, sparse, unbalanced, awkwardly paginated, or visually rough, revise layout, spacing, page breaks, figure sizing, table layout, or content distribution and render again.
17. Recheck tone, punctuation, math syntax, list style, heading structure, metadata fields, resource paths, reproducibility artifacts, and visual presentation before finishing.

## Output Contract

- Write or update `report/report.typ`.
- Copy the bundled template to `report/ecnu_report_template.typ` and import that local copy from `report/report.typ`.
- Keep `report/` limited to `.typ` files only.
- Place every non-Typst file referenced by `report/report.typ` under the project-root `assets/` directory unless the user explicitly requires a different location.
- Fill the `date` field in `conf(...)` with `datetime(year: ..., month: ..., day: ...)` and keep it at year-month-day precision only.
- Keep the report self-contained and directly compilable with Typst.
- When compiling the report, use the project root as the compile root.
- After writing the report, compile it to PDF and inspect the rendered pages as images for visual quality.
- Do not treat source-only review as sufficient for final delivery when layout quality matters.
- Do not import the template directly from `assets/` inside the report file.
- Do not place report images, exported figures, datasets, or other non-Typst helper files under `report/`.
- If the homework involves code execution, create or update a project-root `justfile` that can reproduce the execution steps behind the reported results.
- If the homework involves code execution, present the execution inputs explicitly, such as source data, parameters, configuration choices, or test cases, unless the assignment makes them obvious already.
- If the homework involves code execution, include the original execution output in the report. When the output is too long, include a representative excerpt rather than dumping everything.
- If the homework involves code execution, also include a readable presentation of the output results, such as a table, chart, summary figure, or other suitable visualization.
- If the source material contains explicit question text, preserve the original wording exactly in the report body. Only convert its formatting into equivalent Typst code.
- Do not place the full question stem or an entire question paragraph inside headings. Put a concise question title in the heading, and keep the full question wording in the body below the heading.
- Keep heading text short. Avoid long heading lines that read like condensed paragraphs or near-complete question summaries.
- Do not mention local file paths, workspace-relative paths, home-directory paths, or absolute filesystem paths in the homework content unless the assignment itself explicitly requires such a path to appear.
- Do not describe the execution process as "using just" or otherwise foreground the `justfile` tool inside the homework narrative. The report should describe the experiment, code, inputs, and outputs rather than the convenience wrapper used for reproduction.
- Do not mention prompt engineering, report-generation steps, model behavior, hidden reasoning, or that the report was written by an agent.
- Do not insert process notes such as "以下开始回答", "根据要求生成", or similar meta narration unless the content is part of the assignment itself.

## Writing Style

- Use half-width punctuation uniformly throughout the report. Do not use Chinese punctuation marks or full-width punctuation marks, including double quotation marks, enumeration commas, title marks, commas, colons, periods, question marks, semicolons, square brackets, parentheses, braces, forward slashes, backslashes, and similar symbols.
- Maintain a restrained homework tone: precise, compact, and matter-of-fact.
- Avoid repeated first-person phrasing. Prefer neutral formulations such as direct conclusions, definitions, derivations, and observations.
- Do not produce long generic prose blocks. Prefer short paragraphs, small structured lists, formulas, tables, and direct explanations tied to the question.
- Include enough reasoning to make the answer defensible, but do not expand into essay-style background unless the assignment clearly requires it.
- When referring to supporting materials, describe their role or content naturally instead of citing local filesystem paths.
- Favor layouts that read cleanly on the rendered page, not just in raw Typst source.
- When showing code, format it for page readability. Avoid excessively long lines that wrap awkwardly in the rendered PDF.
- When presenting execution results, show both the raw evidence and a cleaned-up view. Raw logs alone are usually not enough, and polished summaries alone are usually not enough either.
- When presenting execution-based work, explain the inputs and outputs directly. Avoid turning the report into tool usage notes about how the task was rerun.
- When reproducibility matters, keep the execution entrypoints straightforward so another person can rerun the work from the project root with minimal guesswork.

Read `references/report-style.md` when drafting or revising the answer text.

## Structure Rules

- Choose the report structure according to the source material rather than forcing a single template.
- If the source is a question sheet, preserve the assignment's question hierarchy and mirror the numbering style of subquestions.
- When the source is a question sheet, each heading should contain a concise question title. You may add a short structural label if it helps, but do not use the full question stem, sentence, or paragraph as heading text.
- Keep question headings brief enough to read comfortably in one line under normal page width. If a draft heading starts to feel like a compressed abstract of the question, shorten it.
- If the source is an experiment report task, organize the content by report sections such as objective, environment, procedure, results, analysis, and conclusion, but only keep the sections that are actually justified by the assignment.
- Let Typst handle heading numbering automatically; do not hardcode prefixes like `1.` or `2.` into headings.
- Apply the same rule to all auto-numbered Typst structures: do not manually write prefixes such as `表 1:`, `图 2:`, or similar numbering text in captions or titles when Typst will generate them automatically.
- Keep first-level headings in the template's normal flow; do not manually center them with `align(center)` or similar styling.
- For question-answer assignments, use a one-question-one-answer structure: each question should use a short first-level heading that includes the question title, and its solution should appear under a second-level `回答` heading.
- Put the full question text immediately below the question heading instead of embedding the whole question into the heading itself.
- Do not create a single global `题目` section followed by a single global `回答` section for multi-question homework.
- For report-style assignments, do not fabricate a separate "题目/回答" layout if the source material is already report-oriented.
- Use `#enum(...)` for ordered subanswers when the prompt is list-shaped, and match the numbering form expected by the assignment.
- Prefer compact lists. Use non-compact lists only when a single item is long or visually tall.
- Wrap tables, figures, and images with `#figure(...)`.
- When code execution produces data or observable results, pair the execution output with an appropriate table, chart, or other visual summary whenever that improves clarity.
- When code execution is involved, the report should align with a root-level `justfile` that reproduces the relevant commands and generated results.

## Typst Rules

- Use Typst syntax, not LaTeX syntax copied verbatim.
- Use display math or inline math only where mathematical notation is actually needed.
- Do not wrap every technical term in code formatting or math delimiters.
- When including code snippets, reformat them sensibly before insertion. Break long lines, preserve indentation, and omit irrelevant parts when that improves readability without changing the meaning.
- When including execution inputs or outputs, label them clearly so the reader can distinguish what was fed into the program from what the program produced.
- When including execution output, preserve the original content faithfully, but trim it to a representative excerpt if the full output would be too long for the page.
- Keep `justfile` recipes practical and project-facing. Do not encode sandbox-only setup steps, temporary cache workarounds, or other environment-specific instructions that are irrelevant to normal reproduction.
- Keep mathematical expressions valid in Typst. Rewrite LaTeX-only constructs when necessary.
- Do not wrap math expressions in raw/code formatting. For example, write `$B^+ = {B, D}$`, not `` `$B^+ = {B, D}$` ``.
- When a formula contains English words together with operators such as arrows, keep the whole expression in math mode and wrap the words as quoted math text, for example `$"project" -> "manager"$` rather than `` `project -> manager` ``.
- When writing Typst tables, pass all header cells through a single `table.header(...)` call, for example `table.header([*ID*], [*project*], [*skill*])`, rather than repeating separate `table.header[...]` entries.
- For `figure(caption: ...)` and similar auto-labeled structures, write only the caption text itself. For example, use `caption: [四种 RAID 方案的容量, 容错与随机 IOPS 比较]`, not `caption: [表 1: 四种 RAID 方案的容量, 容错与随机 IOPS 比较]`.
- Do not add manual centering commands around level-1 headings.
- Always provide the `date` field inside `conf(...)` as `datetime(year: ..., month: ..., day: ...)`, and keep it at year-month-day precision only.
- Resolve report imports and asset references assuming the Typst compile root is the project root.
- Keep implementation-facing path handling out of the report body. Path details may exist in Typst imports or figure sources, but should not be described verbatim in the homework narrative.
- Use the rendered PDF pages as the final authority for spacing, pagination, figure scale, table fit, and overall page balance.
- If a heading looks visually too long in the rendered PDF, shorten the heading text and move detail back into the body.
- If a code block wraps badly or produces visually noisy long lines in the rendered PDF, rewrite the snippet, split lines, trim nonessential parts, or change the presentation so the code reads cleanly on the page.
- If execution output or its visualization causes layout problems in the rendered PDF, revise the presentation rather than dropping either component.
- If the report needs the helper `display` function, define it explicitly in `report/report.typ`.

Read `references/template-notes.md` when you need template-specific behavior, helper patterns, or layout reminders.

## Diagrams And Special Elements

- If the assignment needs a diagram, prefer drawing it in Typst rather than describing it in ASCII art.
- Consider suitable Typst ecosystem packages for callout boxes or diagrams only when they materially improve the report.
- Keep decorative elements subordinate to the homework content; this is an assignment report, not a slide deck.
- When the report references external diagram assets instead of drawing them inline, store those assets under the project-root `assets/` directory rather than under `report/`.
- During final QA, inspect the compiled PDF through page images and adjust layout when headings, paragraphs, figures, tables, or page breaks look visually off.

## "AI 使用说明"

如果题目或者实验要求你在报告中编写 AI 使用说明或者 AI 报告的时候, 不要将真实的提示词和你的执行情况展现出来.
你应该当成是人类作为主体, 逐步解决问题, AI 仅作为辅助, 完成次要的任务, 以此作为出发点, 完成 AI 使用报告, 另外不要出现 AI 负责报告相关的内容, 当成始终是人在自主编写报告.

## Report Skeletons

Use one of the following structures based on the assignment type.

### Question-Answer Assignment

```typst
#import "./ecnu_report_template.typ": conf

#show: conf(
  course_name: "...",
  lab_name: "...",
  name: "...",
  lab_no: "...",
  stu_id: "...",
  advisor: "...",
  date: datetime(year: 2026, month: 5, day: 17),
)

= 本题标题

[这里写该题题干]

== 回答

[直接作答]

= 下一题标题

[这里写下一题题干]

== 回答

[直接作答]
```

Use this mode when the source material is explicitly organized as questions, subquestions, or exercises. Keep each question and its answer closely paired under the same first-level heading. Put a concise question title in the heading, and keep the full question text in the body rather than in the heading.

### Report-Style Experiment

```typst
#import "./ecnu_report_template.typ": conf

#show: conf(
  course_name: "...",
  lab_name: "...",
  name: "...",
  lab_no: "...",
  stu_id: "...",
  advisor: "...",
  date: datetime(year: 2026, month: 5, day: 17),
)

= 实验目的

[简要说明目标]

= 实验环境

[仅在需要时说明]

= 实验内容与过程

[按实验流程或模块组织]

= 结果与分析

[展示结果并解释]
```

Use this mode when the source material is already a report brief, experiment task, implementation summary, or analysis writeup. Do not force a standalone question section unless the assignment itself provides one.

Keep the chosen skeleton minimal. Add helper definitions only when they are actually used.

## Resources

- `assets/ecnu_report_template.typ`: bundled course report template source to copy into `report/ecnu_report_template.typ`
- Project-root `assets/`: target directory for all non-Typst resources referenced by the report, such as images, generated figures, datasets, and attachments
- `references/report-style.md`: writing and formatting rules for assignment answers
- `references/template-notes.md`: template-specific reminders and Typst patterns
