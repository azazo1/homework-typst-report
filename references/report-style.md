# Report Style

## Purpose

Use this reference when turning a course assignment, lab prompt, or theory question into the final wording of `report/report.typ`.

## Core Expectations

- Choose the report structure based on the source material.
- For question-based assignments, preserve the question wording exactly as it appears in the source material. Do not change, paraphrase, omit, or rewrite any word in the question text.
- Convert the question into appropriate Typst code rather than pasting it blindly, but keep the textual content itself unchanged.
- For report-style experiments, organize the content as a report and do not invent a fake question sheet unless the source prompt provides one.
- Omit background sections unless the assignment explicitly asks for them.
- Write the solution in a homework style rather than a tutorial style.
- Avoid emotional phrasing, conversational fillers, and repeated first-person statements.
- Do not include model reasoning traces or comments about how the answer was produced.

## Language And Punctuation

- Use half-width punctuation uniformly. Do not use Chinese punctuation marks or full-width punctuation marks, including double quotation marks, enumeration commas, title marks, commas, colons, periods, question marks, semicolons, square brackets, parentheses, braces, forward slashes, backslashes, and similar symbols.
- Prefer short declarative sentences.
- Use terminology consistently across the report.
- Keep explanations concise; answer the task instead of adding broad textbook exposition.

## Organizing Answers

- For question-based assignments, make the beginning of the answer section visually explicit, but keep it formal and brief.
- Mirror the prompt's subquestion structure when the prompt is question-based.
- For question-based assignments, use a one-question-one-answer layout whenever practical.
- For multi-question homework, place each question under its own first-level heading, then place the solution under a second-level `回答` heading within that section.
- Do not collect all question statements into one `题目` section and all solutions into one `回答` section.
- For report-style tasks, organize by experiment or report sections and keep only the sections that the assignment actually supports.
- For list-shaped answers, use Typst `#enum(...)` and match the numbering form required by the prompt.
- Do not manually add numbering prefixes to structures that Typst already numbers automatically, such as heading titles, figure captions, or similar labeled elements.
- For comparisons, conditions, or transaction steps, a short list is usually clearer than a dense paragraph.

## Math And Technical Content

- Put actual mathematical symbols and formulas in math mode.
- Do not force every identifier into math mode.
- Do not wrap formulas in raw/code spans after putting them in math mode.
- Prefer `$B^+ = {B, D}$` over `` `$B^+ = {B, D}$` ``.
- For formulas that include English words and operators such as `->`, keep the expression in math mode and write the words as quoted math text, for example `$"project" -> "manager"$`.
- Do not write these expressions as raw/code spans such as `` `project -> manager` ``, because the arrow will remain plain ASCII.
- When the prompt involves formulas, code, algorithms, structured concepts, or domain terminology, prefer exact terms over loose paraphrases.

## What To Avoid

- Do not use ASCII diagrams to stand in for proper figures.
- Do not describe the writing process.
- Do not add irrelevant "summary", "心得", or "reflection" sections unless they are part of the assignment requirements.
- Do not pad the report with generic background material to make it look longer.
