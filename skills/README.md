# Skills

This folder holds agent skills that are worth keeping around. A skill is a folder
with a `SKILL.md` file in it. That file holds instructions that an agent reads
and then follows, so any agent that can read a file can use one. A skill can also
carry other files that its `SKILL.md` points to, such as a longer reference or a
set of examples, and those files sit in subfolders next to it.

Most of these skills come from other people. Every skill in here has a
`SOURCE.md` that names the author, links the original repository, records the
license, and pins the commit that the copy came from. Add that file whenever you
add a skill, so credit stays attached to the work.

## What is in here

- `plain-writing`: writes and revises prose in a plain style, with simple words,
  complete sentences, no dashes, and no jargon. It also has a `deslopify`
  command that rewrites an agent response for a reader who has no context on the
  project. Written by Shreya Shankar. See
  [`plain-writing/SOURCE.md`](plain-writing/SOURCE.md).
- `asd-ste100`: rewrites English into ASD-STE100 Simplified Technical English,
  the controlled language the aerospace industry uses so that maintenance
  instructions cannot be misread. One meaning per word, active voice, simple
  tenses, one instruction per sentence. Use it for text another agent has to
  parse, such as tool descriptions, error messages, and system prompts, and not
  for prose meant for people. The full rule list is in
  [`asd-ste100/references/writing-rules.md`](asd-ste100/references/writing-rules.md)
  and worked examples are in
  [`asd-ste100/examples/before-after.md`](asd-ste100/examples/before-after.md).
  Written by Dustin Yuchen Teng. See
  [`asd-ste100/SOURCE.md`](asd-ste100/SOURCE.md).

## How to use a skill

Claude Code reads skills from `~/.claude/skills`, and each skill lives in its own
folder there. Link a skill from this repository into that folder:

```
ln -s "$PWD/skills/plain-writing" ~/.claude/skills/plain-writing
```

Use a symlink rather than a copy, because a symlink keeps one copy of the skill
and picks up any edit you make here.

Other agents, e.g., Codex, do not have a set place for skills. Paste the contents
of the skill's `SKILL.md` into whatever instructions file that agent reads. When
the skill has extra files, point that agent at the folder as well, because
`SKILL.md` refers to those files by path.

## How to add a skill

Copy the skill into its own folder under `skills`, keeping the `SKILL.md` file
name that agents look for. Keep any subfolders the skill came with, and keep them
in the same place, because `SKILL.md` refers to those files by path. Copy the
license file too when the original repository has one. Then write a `SOURCE.md`
with the author, the original URL, the license, and the commit you copied, and
add the skill to the list above.

Leave out files that only explain the skill to a person browsing the original
repository, such as its `README.md`. Say in `SOURCE.md` what you copied and what
you left out.

Copy the skill instead of adding it as a git submodule, because a copy is easier
to read and to edit, and the pinned commit in `SOURCE.md` still tells you which
version you have.
